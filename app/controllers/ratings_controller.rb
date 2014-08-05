class RatingsController < ApplicationController
def create
  @rating = Rating.new(params[:rating])
  @destination = Destination.find(params[:rating][:destination_id])

  respond_to do |format|
      if @rating.save
        format.json { render :json => { :avg_rating => @destination.avg_rating } }
      else
        format.json { render :json => @rating.errors, :status => :unprocessable_entity }
      end
  end
end

def update
  @rating = Rating.find(params[:id])
  @destination = Destination.find(params[:rating][:destination_id])
  @rating.update_attributes(params[:rating])
                
  respond_to do |format|
    if @rating.save
      format.json { render :json => { :avg_rating => @destination.avg_rating } }
    else
      format.json { render :json => @rating.errors, :status => :unprocessable_entity }
    end
   end
  end
  
  private

  def person_params
    params.require(:rating).permit(:stars)
  end
end
end