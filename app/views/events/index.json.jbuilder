json.array!(@events) do |event|
  json.extract! event, :id, :title, :description, :time, :location, :owner
  json.url event_url(event, format: :json)
end
