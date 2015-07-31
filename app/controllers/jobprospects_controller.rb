class JobprospectsController < ApplicationController
  before_action :get_user

  def index
    if current_user != nil
      @jobprospects = current_user.jobprospects.all
    end
  end

  def new

  end

  def create
    @jobprospect = Jobprospect.new jobprospect_params
    @jobprospect.user = current_user
    if @jobprospect.save
      redirect_to "/"
    else
      render "new"
    end
  end

  def show
  end

  def edit
    @jobprospects = Jobprospect.find(params[:id])
  end

  def update
  end

  def destroy
    Jobprospect.find(params[:id]).destroy
    flash[:success] = "Job deleted"
    redirect_to "/"
  end

  private
  def jobprospect_params
    params.require(:jobprospect).permit(
    :positiontitle,
    :description,
    :companyname,
    :website,
    :city,
    :contact01,
    :contact01email,
    :contact01phone,
    :contact02,
    :contact02email,
    :contact02phone,
    :status,
    :comments)
  end

  def get_user
    @user = current_user
  end

end
