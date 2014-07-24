class Country < ActiveRecord::Base
  has_many :regions
  translates :name, :description, :geography, :weather, :time_zone, :visa_information, :population, :currency, :emergency_services, :transport
end
