json.array!(@activities) do |activity|
  json.extract! activity, :id, :name, :city_id, :type_activity_id, :image_url, :summary, :description, :address, :latitude, :longitude, :website
  json.url activity_url(activity, format: :json)
end
