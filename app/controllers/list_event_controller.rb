class ListEventController < ApplicationController
  add_breadcrumb "Ecuador Tourism", :index_path
  add_breadcrumb "List Events", :list_event_index_path
  
  def index
   
     if params[:set_locale]
       redirect_to list_event_index_path(locale: params[:set_locale])    
    else
        @regions = Region.all
       @events = Event.all.page(params[:page]).per(6)
       @events_by_date = @events.group_by(&:date)
       @date = params[:date] ? Date.parse(params[:date]) : Date.today
       if params[:search_city]
         @events = Event.where(city_id: params[:search_city]).page(params[:page]).per(6)
       end
     end
   end
 end
