class WelcomeController < ApplicationController
  def index
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
     end
  end
end
