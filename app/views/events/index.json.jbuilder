json.array!(@events) do |event|
  json.extract! event, :id, :name, :city_id, :image_url, :summary, :description, :address, :latitude, :longitude
  json.date event.date
  json.url event_path(event, format: :html)
end
