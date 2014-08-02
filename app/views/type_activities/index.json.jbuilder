json.array!(@type_activities) do |type_activity|
  json.extract! type_activity, :id, :name
  json.url type_activity_url(type_activity, format: :json)
end
