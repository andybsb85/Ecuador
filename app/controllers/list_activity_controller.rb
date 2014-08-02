class ListActivityController < ApplicationController
  def index
      if params[:set_locale]
        redirect_to list_activity_index_path(locale: params[:set_locale])    
    else
      @activities = Activity.all
     end
  end
end
