class WoutersController < ApplicationController
  def index
    @wouters = Wouter.all
  end

  def show
    @wouter = Wouter.find(params[:id])
  end

  def new
    @wouter = Wouter.new
  end

  def create
    @wouter = Wouter.new(wouter_params)

    if @wouter.save
      redirect_to @wouter
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @wouter = Wouter.find(params[:id])
  end

  def update
    @wouter = Wouter.find(params[:id])

    if @wouter.update(wouter_params)
      redirect_to @wouter
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @wouter = Wouter.find(params[:id])
    @wouter.destroy

    redirect_to root_path, status: :see_other
  end

  private def wouter_params
    params.require(:wouter).permit(:first_name, :last_name, :number)
  end
end
