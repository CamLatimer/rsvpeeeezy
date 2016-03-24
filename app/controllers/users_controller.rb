class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    redirect_to user_path(@user)
  end

  def show
    @user = User.find(params[:id])
    @user_events = @user.events.order('created_at DESC')
  end

  def edit
    redirect_to :root unless @current_user
    @user = User.find(params[:id])
  end

  def update
    redirect_to :root unless @current_user
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  private
  def user_params
    params.require(:user).permit(:username, :password)
  end
end
