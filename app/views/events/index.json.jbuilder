json.array!(@events) do |event|
  json.extract! event, :id, :name, :city_id, :image_url, :image_url_two, :image_url_three, :video_url, :summary, :description, :address, :latitude, :longitude
  json.date event.date
  json.url event_path(event, format: :html)
end
