json.array!(@cities) do |city|
  json.extract! city, :id, :name, :region_id, :image_url, :description
  json.url city_url(city, format: :json)
end
