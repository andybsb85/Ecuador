class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end
  
  
  def show
    super
  end
  
  
  def create 
    super
      if @user.save
        # Tell the UserMailer to send a welcome email after save
        UserMailer.signup_confirmation(@user).deliver
           flash[:notice] = "User succesfully created"
      else
        flash[:notice] = "Unsuccesfull"
      end
  end
  
  
  def update
    super
  end
  
  protected
    def after_sign_up_path_for(resource)
      signed_in_root_path(resource) 
    end
  
end
