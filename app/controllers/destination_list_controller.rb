class DestinationListController < ApplicationController
  before_action :set_plan
   include CurrentPlan
  
  add_breadcrumb "Ecuador Tourism", :index_path
  add_breadcrumb "List Destinations", :destination_list_index_path
  
  def index
     if params[:set_locale]
       redirect_to destination_list_index_path(locale: params[:set_locale])    
    else    
       if params[:search_topic]
         @destination = Destination.where(type_destination_id: params[:search_topic]).page(params[:page]).per(9)
       elsif params[:search_city]
         @destination = Destination.where(city_id: params[:search_city]).page(params[:page]).per(9)
       else
       @destination = Destination.all.page(params[:page]).per(9)
      end
     end
  end
end

