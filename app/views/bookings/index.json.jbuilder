json.array!(@bookings) do |booking|
  json.extract! booking, :id, :user_id, :event_id
  json.url booking_url(booking, format: :json)
end
