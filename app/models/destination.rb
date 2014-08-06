class Destination < ActiveRecord::Base

  belongs_to :city
  belongs_to :type_destination
  translates :name, :summary, :description
  has_many :line_destinations
  has_many :ratings
  belongs_to :user
  before_destroy :ensure_not_referenced_by_any_line_destination
  
  geocoded_by :address
  reverse_geocoded_by :latitude, :longitude
  after_validation :geocode
  
 
  def self.search(search)
    if search
      with_translations.where('name LIKE ?', "%#{search}%")
    else
      with_translations
    end
  end  
  
def avg_rating
  average_rating = 0.0
  count = 0
  ratings.each do |rating| 
    average_rating += rating.stars
    count += 1
  end
                
  if count != 0
    (average_rating / count)
  else
    count
  end
end
  
  private
    #ensure that there are no line items referencing this product
  def ensure_not_referenced_by_any_line_destination
    if line_destinations.empty?
      return true
    else
      errors.add(:base, 'Line Destinations present')
      return false
    end
  end  
end
