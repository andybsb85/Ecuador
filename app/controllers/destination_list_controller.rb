class DestinationListController < ApplicationController
  def index
    @destinations = Destination.all
   
  end
end
