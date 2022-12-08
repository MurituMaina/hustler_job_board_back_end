class SessionsController < ApplicationController
  skip_before_action :authorize, only: :create

  def create
    recruiter = Recruiter.find_by(email: params[:email])
    if recruiter&.authenticate(params[:password])
      session[:recruiter_id] = recruiter.id
      render json: recruiter, status: :created
    else
      render json: { errors: ["Invalid Username or Password"] }, status: :unauthorized
    end
  end

  def destroy
    session.delete :recruiter_id
    head :no_content
  end   
end
