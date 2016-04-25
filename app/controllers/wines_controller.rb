class WinesController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @wines = Wine.where("user_id = ?", params[:user_id])
  end

  def show

  end

  def new
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
