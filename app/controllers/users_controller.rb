class UsersController < ApplicationController
  before_action :initialize_user


  def index
    @user = User.all
  end

  def initialize_user
      @user = User.new
  end


 # POST /users or /users.json
 def create
  @user = User.new(user_params)

  respond_to do |format|
    if @user.save
      # Tell the UserMailer to send a welcome email after save
      UserMailer.with(user: @user).welcome_email.deliver_later

      format.html { redirect_to root_path, notice: 'Message sent!'}
     
      format.json { render json: @user, status: :created, location: @user }
    else
      format.html { render action: 'new' }
      format.json { render json: @user.errors, status: :unprocessable_entity }
    end
  end
end

  private
  def user_params
    params.require(:user).permit(:name, :email, :body)
  end

end
