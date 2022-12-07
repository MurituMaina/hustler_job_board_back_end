class JobsController < ApplicationController
  skip_before_action :authorize
  #  , only:[:index]
  def index
    jobs = Job.all
    render json: jobs
  end

  def show
    job = find_job
    render json: job
  end

  def create
    job = Job.create!(jobs_params,recruiter_id: 1)
    # job = @loggeIn_recruiter.jobs.create!(jobs_params)
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
    params.permit(:company, :title, :description)
    # , :requirements, :recruiter_id
  end

  def find_job
    Job.find(params[:id])
  end
end
