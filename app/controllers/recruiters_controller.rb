class RecruitersController < ApplicationController
  def index
    recruiters = Recruiter.all
    render json: recruiters
  end

  def show
    recruiter = Recruiter.find(params[:id])
    render json: recruiter
  end
  def create
# re  
  end
end
