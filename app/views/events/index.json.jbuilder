json.array!(@events) do |event|
  json.extract! event, :id, :string, :city_id, :string, :text, :text, :date, :text, :float, :float
  json.url event_url(event, format: :json)
end
