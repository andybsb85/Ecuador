class ListActivityController < ApplicationController
  
   add_breadcrumb "Ecuador Tourism", :index_path
   add_breadcrumb "List Activities", :list_activity_index_path
  
  def index
      if params[:set_locale]
        redirect_to list_activity_index_path(locale: params[:set_locale])    
    else
      @activities = Activity.all
     end
  end
end
