class DestinationListController < ApplicationController
  def index
    @destination = Destination.order(:name)
  end
 
end
