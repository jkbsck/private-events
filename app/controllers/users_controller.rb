class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new
    if @ser.save
      redirect_to index_path
  end

  def show
  end
end
