class DestinationListController < ApplicationController
  add_breadcrumb "Ecuador Tourism", :index_path
  add_breadcrumb "List Destinations", :destination_list_index_path
  
  def index
     if params[:set_locale]
       redirect_to destination_list_index_path(locale: params[:set_locale])    
    else    
       @destination = Destination.order(:name) 
     end
  end
end

