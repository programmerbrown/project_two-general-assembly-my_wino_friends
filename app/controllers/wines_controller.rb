class WinesController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @wines = Wine.where("user_id = ?", params[:user_id])
  end

  def show
    @user = User.find(params[:user_id])
    @wine = @user.wines.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    @wine = Wine.new
  end

  def create
    @user = User.find(params[:user_id])
    @wine = @user.wines.create!(wine_params)
    redirect_to user_wines_path(@user)
  end

  def edit
    @user = User.find(params[:user_id])
    @wine = @user.wines.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @wine = Wine.find(params[:id])
    @wine.update(wine_params)

    redirect_to user_wines_path(@user)
  end

  def destroy
    @user = User.find(params[:user_id])
    @wine = @user.wines.find(params[:id])
    @wine.destroy

    redirect_to user_wines_path(@user)
  end

  private
  def wine_params
    params.require(:wine).permit(:name, :year, :email, :description, :wine_url)
  end
end
