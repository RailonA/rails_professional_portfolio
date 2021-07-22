class UserMailer < ApplicationMailer
  default from: 'railonacosta@gmail.com'

  def welcome_email
    @user = params[:user]
    mail(to: @user.email, subject: 'Thank You For Reaching Out!!')
  end
  
  def new_email
    @user = params[:user]
    mail(to: 'railonacosta@gmail.com', subject: 'New Lead!!')
  end


end
