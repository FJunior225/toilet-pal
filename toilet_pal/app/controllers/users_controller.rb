class UsersController < ApplicationController
  # def index
  #   @users = User.all
  # end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      redirect_to @user
    else
      @errors = @user.errors.full_messages
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password, :first_name, :last_name, :gender, :zip_code)
  end

end