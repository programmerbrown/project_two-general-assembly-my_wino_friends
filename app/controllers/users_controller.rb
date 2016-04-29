class UsersController < ApplicationController

  def index
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @wines = []
    @wines << @user.wines.first if @user.wines.first
    @wines << @user.wines.offset(1).first if @user.wines.offset(1).first
    @wines << @user.wines.offset(2).first if @user.wines.offset(2).first
  end

  def create
    @user = User.create!(user_params)
    redirect_to user_path(@user)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
      @user = User.find(params[:id])
      @user.update_attributes(user_params)
      redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to new_user_path
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :city, :state, :country, :avatar, :picture_url)
  end
end
