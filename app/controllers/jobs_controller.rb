class JobsController < ApplicationController
  def index
    jobs = Job.all
    render json: jobs
  end

  def show
    job = find_job
    render json: job
  end

  def create 
    job = find_job
    render json: job, status: :created
  end

  def update
    job = find_job
    job.update!(jobs_params)
    render json: jobs
  end

  def destroy 
    job = find_job
    job.destroy
    head :no_content, status: :no_content
  end

  private 

  def jobs_params 
    params.permit(:company_name, :title, :description, :requirements, :recruiter_id)
  end

  def find_job 
    job = Job.find(params[:id])
  end
end
