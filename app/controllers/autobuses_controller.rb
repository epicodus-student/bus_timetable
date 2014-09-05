class AutobusesController < ApplicationController
  def index
    @autobuses = Autobus.all
  end

  def new
    @autobus = Autobus.new
  end

  def create
    @autobus = Autobus.new(params[:autobus])
    if @autobus.save
      flash[:notice] = "Your autobus was added."
      redirect_to autobuses_path
    else
      render 'new'
    end
  end

  def show
    @autobus = Autobus.find(params[:id])
  end

  def edit
    @autobus = Autobus.find(params[:id])
  end

  def update
    @autobus = Autobus.find(params[:id])
    @autobus.update(params[:autobus])
    redirect_to autobus_path(@autobus)
  end

  def destroy
    @autobus = Autobus.find(params[:id])
    @autobus.destroy
    flash[:notice] = "#{@autobus.name} was removed."
    redirect_to autobuses_path
  end
end
