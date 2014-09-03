class StationsController < ApplicationController
  def index
    @stations = Station.all
  end

  def new
    @station = Station.new
  end

  def create
    @station = Station.new(params[:station])
    if @station.save
      flash[:notice] = "Your station was added."
      redirect_to stations_path
    else
      render 'new'
    end
  end

  def show
    @station = Station.find(params[:id])
  end

  def edit
    @station = Station.find(params[:id])
  end

  def update
    @station = Station.find(params[:id])
    @station.update(params[:station])
    redirect_to station_path(@station)
  end

  def destroy
    @station = Station.find(params[:id])
    @station.destroy
    flash[:notice] = "#{@station.name} was removed."
    redirect_to stations_path
  end
end
