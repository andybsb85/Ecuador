class City < ActiveRecord::Base
  belongs_to :region
  
  geocoded_by :address
  reverse_geocoded_by :latitude, :longitude
  after_validation :geocode
end
