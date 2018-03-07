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
    @assignment = Assignment.find(params[:id]).destroy
    respond_to do |format|
      if @assignment.destroy
        format.html { redirect_to root_path }
        format.js
      end
    end
  end

  private

  def assignment_params
  	params.require(:assignment).permit(:boat_id, :job_id)
  end
end
