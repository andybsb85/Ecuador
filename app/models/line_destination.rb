class LineDestination < ActiveRecord::Base
  belongs_to :destination
  belongs_to :plan
end
