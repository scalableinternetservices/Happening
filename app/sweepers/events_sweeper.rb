class EventSweeper < ActionController::Caching::Sweeper
  observe Event

  def after_create(event)
    expire_action :index
    expire_action :show, :id => event
    expire_action :controller => :events, :action => :show, :id => @event.id
  end

  def after_update(event)
    expire_action :index
    expire_action :show, :id => event
    expire_action :controller => :events, :action => :show, :id => @event.id
  end

  def after_destroy(event)
    expire_action :index
    expire_action :show, :id => event
    expire_action :controller => :events, :action => :show, :id => @event.id
  end

  private
  def expire_cache_for(record)
    expire_page(:controller => '#{record}', :action => 'list')

    # Expire a fragment
    expire_fragment(:controller => '#{record}',
      :action => 'recent', :action_suffix => 'all_events')
  end
end
