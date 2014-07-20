json.array!(@countries) do |country|
  json.extract! country, :id, :name, :description, :image_url, :geography, :weather, :time_zone, :visa_information, :population, :currency, :emergency_services, :transport
  json.url country_url(country, format: :json)
end
