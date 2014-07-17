class UserMailer < ActionMailer::Base
  default from: 'andybsb85@gmail.com'

  def signup_confirmation(user)
    @user = user
    mail(:to => @user.email, :subject => "Registered")
  end
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signup_confirmation.subject
  #
 # def signup_confirmation(user)
  #  @user = user
   # mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  #end
end
