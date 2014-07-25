json.array!(@line_destinations) do |line_destination|
  json.extract! line_destination, :id, :destination_id, :plan_id
  json.url line_destination_url(line_destination, format: :json)
end
