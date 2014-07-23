json.array!(@destinations) do |destination|
  json.extract! destination, :id, :name, :city_id, :type_destination_id, :image_url, :description, :address, :phone, :website
  json.url destination_url(destination, format: :json)
end
