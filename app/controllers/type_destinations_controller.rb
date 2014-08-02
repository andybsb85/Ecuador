class TypeDestinationsController < ApplicationController
  before_action :set_type_destination, only: [:show, :edit, :update, :destroy]

  # GET /type_destinations
  # GET /type_destinations.json
  def index
      if params[:set_locale]
        redirect_to type_destinations_path(locale: params[:set_locale])    
     else  
     @type_destinations = TypeDestination.all
      end
  end

  # GET /type_destinations/1
  # GET /type_destinations/1.json
  def show
  end

  # GET /type_destinations/new
  def new
    @type_destination = TypeDestination.new
  end

  # GET /type_destinations/1/edit
  def edit
  end

  # POST /type_destinations
  # POST /type_destinations.json
  def create
    @type_destination = TypeDestination.new(type_destination_params)

    respond_to do |format|
      if @type_destination.save
        format.html { redirect_to @type_destination, notice: 'Type destination was successfully created.' }
        format.json { render :show, status: :created, location: @type_destination }
      else
        format.html { render :new }
        format.json { render json: @type_destination.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_destinations/1
  # PATCH/PUT /type_destinations/1.json
  def update
    respond_to do |format|
      if @type_destination.update(type_destination_params)
        format.html { redirect_to @type_destination, notice: 'Type destination was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_destination }
      else
        format.html { render :edit }
        format.json { render json: @type_destination.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_destinations/1
  # DELETE /type_destinations/1.json
  def destroy
    @type_destination.destroy
    respond_to do |format|
      format.html { redirect_to type_destinations_url, notice: 'Type destination was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_destination
      @type_destination = TypeDestination.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_destination_params
      params.require(:type_destination).permit(:name)
    end
end
