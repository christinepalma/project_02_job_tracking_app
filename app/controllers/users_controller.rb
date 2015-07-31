class UsersController < ApplicationController
  #before_action :authorize, only: :index

  def index
    @users = User.all

  end


  def new
    @user = User.new
  end


  def create
    @user = User.new user_params
    if @user.save
      redirect_to "/"
    else
      render "new"
    end
  end



  def show
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to "/"
  end



private
  def user_params
    params.require(:user).permit(:firstname, :lastname, :username, :email, :password, :password_confirmation)
  end


end
