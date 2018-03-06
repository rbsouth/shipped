class JobsController < ApplicationController
  def index
    @user = current_user
    @jobs = current_user.jobs.all
    @boats = current_user.boats.all
  end

  def new
    @job = Job.new
  end

  def create
    @job = current_user.jobs.new(job_params)
    respond_to do |format|
      if @job.save
        format.html { redirect_to root_path }
        format.js
      end
    end
  end

  def show
    @job = Job.find(params[:id])
  end

  def edit
    @job = current_user.jobs.find(params[:id])
  end

  def update
    @job = current_user.jobs.find(params[:id])
    @job.update_attributes(job_params)
    redirect_to jobs_path
  end

  def destroy
    @job = current_user.jobs.find(params[:id]).destroy
    respond_to do |format|
      if @job.destroy
        format.html { redirect_to root_path }
        format.js
      end
    end
  end

  private

  def job_params
    params.require(:job).permit(:title, :description, :origin, :destination, :cost, :containers_needed)
  end
end
