class Event < ActiveRecord::Base
   translates :name, :summary, :description
end
