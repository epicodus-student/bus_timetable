class StopsController < ApplicationController
  def index
    @stops = Stop.all
  end

  def new
    @stop = Stop.new
  end

  def create
    @stop = Stop.new(params[:stop])
    if @stop.save
      flash[:notice] = "Your stop was added."
      redirect_to stops_path
    else
      render 'new'
    end
  end

  def show
    @stop = Stop.find(params[:id])
  end

  def edit
    @stop = Stop.find(params[:id])
  end

  def update
    @stop = Stop.find(params[:id])
    @stop.update(params[:stop])
    redirect_to stop_path(@stop)
  end

  def destroy
    @stop = Stop.find(params[:id])
    @stop.destroy
    flash[:notice] = "This stop was removed."
    redirect_to stops_path
  end
end
