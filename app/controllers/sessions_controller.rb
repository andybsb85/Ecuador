class SessionsController < Devise::SessionsController
  def new
     if params[:set_locale]
       redirect_to new_user_session_path(locale: params[:set_locale])    
     else
       super      
     end
  end
end
