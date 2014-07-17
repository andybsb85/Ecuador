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
         flash[:notice] = "Test Error"
      end
  end
  
  
  def update
    super
  end
end
