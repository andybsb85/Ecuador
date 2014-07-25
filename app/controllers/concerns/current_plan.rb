module CurrentPlan
  extend ActiveSupport::Concern
  
  private
  def set_plan
    @plan = Plan.find(session[:plan_id])
  rescue ActiveRecord::RecordNotFound
    @plan = Plan.create
    session[:plan_id] = @plan.id
  end
end

    