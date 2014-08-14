class GalleryController < ApplicationController
  def index
      if params[:set_locale]
        redirect_via_turbolinks_to gallery_index_path(locale: params[:set_locale])    
      end
  end
end
