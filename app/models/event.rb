class Event < ActiveRecord::Base
  translates :name, :summary, :description
  belongs_to :city
end
