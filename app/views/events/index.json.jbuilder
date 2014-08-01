json.array!(@events) do |event|
  json.extract! event, :id, :name, :image_url, :description, :place
  json.date event.date
  json.url event_path(event, format: :html)
end
