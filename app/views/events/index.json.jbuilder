json.array!(@events) do |event|
  json.extract! event, :id, :name, :image_url, :description, :date, :place
  json.url event_url(event, format: :json)
end
