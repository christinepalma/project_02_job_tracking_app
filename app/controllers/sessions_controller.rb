class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.where(email: params[:email]).first

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: "logged in!"
    else
      flash.now.alert = "invalid login credentials"
      redirect_to sessions_path
    end

  end



  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "logged out"
  end

  private
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
