json.array!(@type_destinations) do |type_destination|
  json.extract! type_destination, :id, :name
  json.url type_destination_url(type_destination, format: :json)
end
