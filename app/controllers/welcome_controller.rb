class WelcomeController < ApplicationController
  def index
  if params[:set_locale]
    redirect_to index_path(locale: params[:set_locale])    
    end
  end
end
