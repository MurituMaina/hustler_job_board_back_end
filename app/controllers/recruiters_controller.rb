class RecruitersController < ApplicationController
  def index
    recruiters = Recruiter.all
    render json: recruiters
  end

  def show
    recruiter = Recruiter.find(session[:recruiter_id])
    render json: recruiter
  end

  def create
    recruiter= Recruiter.create!(recruiter_params)
    session[:recruiter_id] = recruiter.id
    render json: recruiter, status: :created
  end


  private
  def recruiter_params
  params.permit(:email, :password, :password_confirmation)
  end
end
