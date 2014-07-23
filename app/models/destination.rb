class Destination < ActiveRecord::Base
  belongs_to :city
  belongs_to :type_destination
end
