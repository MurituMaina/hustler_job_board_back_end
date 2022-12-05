class JobsController < ApplicationController
  def index
    jobs = Job.all
    render json: jobs
  end

  def show
    job = Job.find(params[:id])
    render json: job
  end

  def create 
    job = Job.create!(jobs_params)
    render json: job
  end

  

  private 

  def jobs_params 
    params.permit(:company_name, :title, :description, :requirements, :recruiter_id)
  end
end
