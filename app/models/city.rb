class City < ActiveRecord::Base
  belongs_to :region
  has_many :destinations
  has_many :activities
  has_many :events
  
  geocoded_by :address
  reverse_geocoded_by :latitude, :longitude
  after_validation :geocode
end
