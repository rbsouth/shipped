class AssignmentsController < ApplicationController
  def create
  	# @assignment = Assignment.create(assignment_params)
  	@boat = Boat.find(assignment_params[:boat_id])
  	@job = Job.find(assignment_params[:job_id])
  	@job.boats << @boat
  	respond_to do |format|
  		@type = params[:type]
  		format.js 
  	end
  end

  def destroy
  end

  private

  def assignment_params
  	params.require(:assignment).permit(:boat_id, :job_id)
  end
end
