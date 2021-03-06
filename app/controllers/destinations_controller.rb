class DestinationsController < ApplicationController
  before_action :set_destination, only: [:show, :edit, :update, :destroy]
  
   add_breadcrumb "Ecuador Tourism", :index_path
   add_breadcrumb "List Destinations", :destination_list_index_path
   add_breadcrumb "Destinations", :destination_path


  # GET /destinations
  # GET /destinations.json
  def index
    if params[:set_locale]
      redirect_to destinations_path(locale: params[:set_locale])    
    else
      @destinations = Destination.all
    end
  end


  # GET /destinations/1
  # GET /destinations/1.json
  def show
    if params[:set_locale]
      redirect_to destination_path(locale: params[:set_locale])    
    else
      @destination = Destination.find(params[:id])
      @hash = Gmaps4rails.build_markers(@destination) do |destination, marker|
      marker.lat destination.latitude
      marker.lng destination.longitude
    end
   end
  end

  # GET /destinations/new
  def new
    @destination = Destination.new
  end

  # GET /destinations/1/edit
  def edit
  end

  # POST /destinations
  # POST /destinations.json
  def create
    @destination = Destination.new(destination_params)

    respond_to do |format|
      if @destination.save
        format.html { redirect_to @destination, notice: 'Destination was successfully created.' }
        format.json { render :show, status: :created, location: @destination }
      else
        format.html { render :new }
        format.json { render json: @destination.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /destinations/1
  # PATCH/PUT /destinations/1.json
  def update
    respond_to do |format|
      if @destination.update(destination_params)
        format.html { redirect_to @destination, notice: 'Destination was successfully updated.' }
        format.json { render :show, status: :ok, location: @destination }
      else
        format.html { render :edit }
        format.json { render json: @destination.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /destinations/1
  # DELETE /destinations/1.json
  def destroy
    @destination.destroy
    respond_to do |format|
      format.html { redirect_to destinations_url, notice: 'Destination was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_destination
      @destination = Destination.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def destination_params
      params.require(:destination).permit(:name, :city_id, :type_destination_id, :image_url, :image_url_two, :image_url_three, :summary, :description, :address, :latitude, :longitude, :phone, :website)
    end
end
