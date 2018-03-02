class BoatsController < ApplicationController
  def index
    @boats = Boat.all
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = current_user.boats.create(boat_params)
    redirect_to @boat
  end

  def show
    @boat = Boat.find(params[:id])
  end

  def edit
    @boat = current_user.boats.find(params[:id])
  end

  def update
    @boat = current_user.boats.find(params[:id])
    @boat.update_params(boat_params)
    reditect_to 
  end

  def destroy
    current_user.boats.find(params[:id]).destroy
    redirect_to boats_path
  end

  private

  def boat_params
    params.require(:boat).premit(:name, :container_capacity, :location)
  end
end
