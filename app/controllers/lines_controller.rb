class LinesController < ApplicationController
  def index
    @lines = Line.all
  end

  def new
    @line = Line.new
  end

  def create
    @line = Line.new(params[:line])
    if @line.save
      flash[:notice] = "Your line was added."
      redirect_to lines_path
    else
      render 'new'
    end
  end

  def show
    @line = Line.find(params[:id])
  end

  def edit
    @line = Line.find(params[:id])
  end

  def update
    @line = Line.find(params[:id])
    @line.update(params[:line])
    redirect_to line_path(@line)
  end

  def destroy
    @line = Line.find(params[:id])
    @line.destroy
    flash[:notice] = "#{@line.name} was removed."
    redirect_to lines_path
  end
end
