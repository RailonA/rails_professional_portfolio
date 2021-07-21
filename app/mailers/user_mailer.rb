class UserMailer < ApplicationMailer
  default from: 'railonacosta@gmail.com'

  def welcome_email
    @user = params[:user]
    mail(to: @user.email, subject: 'Thank You For Reaching Out!!')
  end
end
