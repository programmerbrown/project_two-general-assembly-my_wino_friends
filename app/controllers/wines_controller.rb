class WinesController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @wines = Wine.where("user_id = ?", params[:user_id])
  end

  def show

  end

  def new
    @user = User.find(params[:user_id])
    @wine = Wine.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
