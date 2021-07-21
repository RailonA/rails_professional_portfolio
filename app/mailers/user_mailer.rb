class UserMailer < ApplicationMailer
  default from: 'railonacosta@gmail.com'

  def welcome_email
    @user = params[:user]
    @url  = 'http://example.com/login'
    # mail(to: 'railonacosta@gmail.com', subject: 'Welcome to My Awesome Site')
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
