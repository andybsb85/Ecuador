class ListActivityController < ApplicationController
  
   add_breadcrumb "Ecuador Tourism", :index_path
   add_breadcrumb "List Activities", :list_activity_index_path
  
  def index
      if params[:set_locale]
        redirect_to list_activity_index_path(locale: params[:set_locale])    
    else
    
      @regions = Region.all
         if params[:search_topic]
           @activities = Activity.where(type_activity_id: params[:search_topic]).page(params[:page]).per(6)
       elsif params[:search_city]
           @activities = Activity.where(city_id: params[:search_city]).page(params[:page]).per(6)
       else
           @activities = Activity.all.page(params[:page]).per(6)
      end
     end
  end
end
