class Activity < ActiveRecord::Base
  belongs_to :city
  belongs_to :type_activity
  
  translates :name, :summary, :description
end
