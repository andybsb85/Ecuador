class Activity < ActiveRecord::Base
  belongs_to :city
  belongs_to :type_activity
  
  translates :name, :summary, :description
  
   geocoded_by :address
  reverse_geocoded_by :latitude, :longitude
  after_validation :geocode
  
end
