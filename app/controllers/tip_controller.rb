class TipController < ApplicationController
  
  def index
    if params[:set_locale]
      redirect_to tip_index_path(locale: params[:set_locale])    
    end
  end
end
