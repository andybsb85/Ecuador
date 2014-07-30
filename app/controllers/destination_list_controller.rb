class DestinationListController < ApplicationController
  def index
    if params[:set_locale]
      redirect_to destination_list_index_path(locale: params[:set_locale])    
    else
      @search = Destination.search do
        fulltext params[:search]
      end
    @destination= @search.results
     
    end
  end
end
