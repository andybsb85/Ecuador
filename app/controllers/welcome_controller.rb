class WelcomeController < ApplicationController
  def index
    if params[:set_locale]
      redirect_to index_path(locale: params[:set_locale])    
    else
      @activities = Activity.all
      @hashactivity = Gmaps4rails.build_markers(@activities) do |activity, marker|
       marker.lat activity.latitude
       marker.lng activity.longitude
         
        @events = Event.all
        @events_by_date = @events.group_by(&:date)
        @date = params[:date] ? Date.parse(params[:date]) : Date.today
                
       end
        @destination = Destination.all
        @hash = Gmaps4rails.build_markers(@destination) do |destination, marker|

        marker.lat destination.latitude
        marker.lng destination.longitude
      end
    end
  end
end
