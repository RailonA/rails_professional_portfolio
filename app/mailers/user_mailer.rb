class UserMailer < ApplicationMailer
    default from: 'railonacosta@gmail.com'

    def welcome_email
      @user = params[:user]
      mail(to: @user.email, subject: 'We have received your message and will be in touch soon!')
    end
end
