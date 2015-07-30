class JobprospectsController < ApplicationController
  def index
    @jobprospects = Jobprospect.all
  end

  def new

  end

  def create
    @jobprospect = Jobprospect.new params.require(:jobprospect).permit(
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
    :comments
    )
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
    @jobprospect = Jobprospect.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

end
