class JobsController < ApplicationController

  def index
  end

  def new
    @job = Job.new
  end

  def create
    Job.create(job_params)
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    job = Job.find(params[:id])
    if job.user_id == current_user.id 
      job.update(job_params)
  end

  def destroy
    job = Job.find(params[:id])
    job.destroy if job.user_id == current_user.id
  end

  private
  def job_params 
    params.require(:job).permit(:job_text)
  end

end
