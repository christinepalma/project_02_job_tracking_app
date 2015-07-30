class JobprospectsController < ApplicationController
  def index
    @jobprospects = Jobprospect.all
  end

  def new
    
  end

  def create

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
end
