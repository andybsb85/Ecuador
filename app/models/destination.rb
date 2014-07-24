class Destination < ActiveRecord::Base
  belongs_to :city
  belongs_to :type_destination
  translates :name, :description
end
