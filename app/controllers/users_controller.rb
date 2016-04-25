class UsersController < ApplicationController

  def index
  end

  def new
    @user = User.new
  end

  def show
  end

  def create
    @user = User.create!(user_params)
    redirect_to user_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :city, :state, :country, :picture_url)
  end
end
