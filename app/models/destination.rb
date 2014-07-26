class Destination < ActiveRecord::Base
  belongs_to :city
  belongs_to :type_destination
  translates :name, :description
  has_many :line_destinations
  
  geocoded_by :address
  after_validation :geocode
  
  before_destroy :ensure_not_referenced_by_any_line_destination
  
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
