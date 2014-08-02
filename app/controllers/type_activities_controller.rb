class TypeActivitiesController < ApplicationController
  before_action :set_type_activity, only: [:show, :edit, :update, :destroy]

  # GET /type_activities
  # GET /type_activities.json
  def index
     if params[:set_locale]
       redirect_to type_activities_path(locale: params[:set_locale])    
     else  
      @type_activities = TypeActivity.all
     end
  end

  # GET /type_activities/1
  # GET /type_activities/1.json
  def show
  end

  # GET /type_activities/new
  def new
    @type_activity = TypeActivity.new
  end

  # GET /type_activities/1/edit
  def edit
  end

  # POST /type_activities
  # POST /type_activities.json
  def create
    @type_activity = TypeActivity.new(type_activity_params)

    respond_to do |format|
      if @type_activity.save
        format.html { redirect_to @type_activity, notice: 'Type activity was successfully created.' }
        format.json { render :show, status: :created, location: @type_activity }
      else
        format.html { render :new }
        format.json { render json: @type_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_activities/1
  # PATCH/PUT /type_activities/1.json
  def update
    respond_to do |format|
      if @type_activity.update(type_activity_params)
        format.html { redirect_to @type_activity, notice: 'Type activity was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_activity }
      else
        format.html { render :edit }
        format.json { render json: @type_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_activities/1
  # DELETE /type_activities/1.json
  def destroy
    @type_activity.destroy
    respond_to do |format|
      format.html { redirect_to type_activities_url, notice: 'Type activity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_activity
      @type_activity = TypeActivity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_activity_params
      params.require(:type_activity).permit(:name)
    end
end
