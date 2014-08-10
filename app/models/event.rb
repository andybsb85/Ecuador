class Event < ActiveRecord::Base
  translates :name, :summary, :description
  belongs_to :city
  
  geocoded_by :address
  reverse_geocoded_by :latitude, :longitude
  after_validation :geocode
  
end
