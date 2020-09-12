class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    session[:user_id] = @user.id
    redirect_to user_path(@user)
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
