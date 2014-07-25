class LineDestinationsController < ApplicationController
  include CurrentPlan
  before_action :set_plan, only: [:create]
  before_action :set_line_destination, only: [:show, :edit, :update, :destroy]

  # GET /line_destinations
  # GET /line_destinations.json
  def index
    @line_destinations = LineDestination.all
  end

  # GET /line_destinations/1
  # GET /line_destinations/1.json
  def show
  end

  # GET /line_destinations/new
  def new
    @line_destination = LineDestination.new
  end

  # GET /line_destinations/1/edit
  def edit
  end

  # POST /line_destinations
  # POST /line_destinations.json
  def create
    destination = Destination.find(params[:destination_id])
    @line_destination = @plan.add_destination(destination.id)

    respond_to do |format|
      if @line_destination.save
        format.html { redirect_to @line_destination.plan, notice: 'Line destination was successfully created.' }
        format.json { render :show, status: :created, location: @line_destination }
      else
        format.html { render :new }
        format.json { render json: @line_destination.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /line_destinations/1
  # PATCH/PUT /line_destinations/1.json
  def update
    respond_to do |format|
      if @line_destination.update(line_destination_params)
        format.html { redirect_to @line_destination, notice: 'Line destination was successfully updated.' }
        format.json { render :show, status: :ok, location: @line_destination }
      else
        format.html { render :edit }
        format.json { render json: @line_destination.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /line_destinations/1
  # DELETE /line_destinations/1.json
  def destroy
    @line_destination.destroy
    respond_to do |format|
      format.html { redirect_to line_destinations_url, notice: 'Line destination was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_line_destination
      @line_destination = LineDestination.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def line_destination_params
      params.require(:line_destination).permit(:destination_id, :plan_id)
    end
end
