class RegistrationsController < Devise::RegistrationsController
  def new
     if params[:set_locale]
       redirect_to new_user_registration_path(locale: params[:set_locale])    
     else
       super      
     end
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
      if params[:set_locale]
        redirect_to edit_user_registration_path(locale: params[:set_locale])    
     else
       super      
     end
  end
  
  protected
    def after_sign_up_path_for(resource)
      new_user_session_path(resource) 
    end
  
end
