class WelcomeController < ApplicationController
  def index
    @regions = Region.all
    if params[:set_locale]
      redirect_to index_path(locale: params[:set_locale])    
    else
       @cities = City.all
       @hashcity = Gmaps4rails.build_markers(@cities) do |city, marker|
       marker.lat city.latitude
       marker.lng city.longitude
         
        @events = Event.all
        @events_by_date = @events.group_by(&:date)
        @date = params[:date] ? Date.parse(params[:date]) : Date.today
        
     end
        @destination = Destination.all.page(params[:page]).per(3)
        @hash = Gmaps4rails.build_markers(@destination) do |destination, marker|

        marker.lat destination.latitude
        marker.lng destination.longitude
      end
    end
  end
end
