class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user), notice: 'You have signed up successfully.'
    else
      if @user.username == ''
        redirect_to new_user_path, notice: "Username can not be empty!"
      else
        redirect_to new_user_path, notice: "User already exists!"
      end
    end
  end

  def show
  end

  def index
    @users = User.all
  end

  private
    def user_params
      params.require(:user).permit(:username)
    end
end
