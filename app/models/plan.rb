class Plan < ActiveRecord::Base
  has_many :line_destinations, dependent: :destroy
  
  def add_destination(destination_id)
    current_destination = line_destinations.find_by(destination_id: destination_id)
    if current_destination
      current_destination = current_destination
    else
      current_destination = line_destinations.build(destination_id: destination_id)
    end
    current_destination
  end
end
