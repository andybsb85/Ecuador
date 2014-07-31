class DestinationListController < ApplicationController
  def index
         
      @destination = Destination.with_translations(I18n.locale).search(params[:query])
      end
  
      def with_translations(*locales)
      locales = translated_locales if locales.empty?
      includes(:translations).with_locales(locales).with_required_attributes
     end
end

