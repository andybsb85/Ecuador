class ListEventController < ApplicationController
  add_breadcrumb "Ecuador Tourism", :index_path
  add_breadcrumb "List Events", :list_event_index_path
  
  def index
     if params[:set_locale]
       redirect_to list_event_index_path(locale: params[:set_locale])    
    else
    @events = Event.all
    @events_by_date = @events.group_by(&:date)
    @date = params[:date] ? Date.parse(params[:date]) : Date.today

     end
   end
 end
