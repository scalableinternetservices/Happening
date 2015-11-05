json.array!(@events) do |event|
  json.extract! event, :id, :name, :location, :timestart, :timeend, :description, :host
  json.url event_url(event, format: :json)
end
