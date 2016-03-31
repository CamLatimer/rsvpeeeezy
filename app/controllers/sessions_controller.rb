class SessionsController < ApplicationController

  # nice job implementing users and sessions!
  def new
  end

  def create
    input_username = params[:user][:username]
    if User.exists?(username: input_username)
      @user = User.find_by(username: input_username)
      if @user.password === params[:user][:password]
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
        #if password is wrong
        redirect_to new_session_path
      end
    else
        #if username doesn't exist
      redirect_to new_session_path
    end
  end

  def destroy
    reset_session
    redirect_to :root
  end
end
