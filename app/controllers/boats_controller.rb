class BoatsController < ApplicationController
  def index
    @boats = Boat.all
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = current_user.boats.new(boat_params)
    respond_to do |format|
      if @boat.save
        # local: true, redirect like normal
        format.html { redirect_to root_path }
        # remote: true
        format.js # views/boats/create.js.erb
      end
    end
  end

  def show
    @boat = Boat.find(params[:id])
  end

  def edit
    @boat = current_user.boats.find(params[:id])
  end

  def update
    @boat = current_user.boats.find(params[:id])
    @boat.update_attributes(boat_params)
    redirect_to boats_path
  end

  def destroy
    @boat = current_user.boats.find(params[:id]).destroy
    respond_to do |format|
      if @boat.destroy
        format.html { redirect_to boats_path }
        format.js
      end
    end
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :container_capacity, :location, :image)
  end
end
