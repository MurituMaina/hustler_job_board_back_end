class SessionsController < ApplicationController
  # skip_before_action :authorize, only: :create

  def create
    recruiter = Recruiter.find_by(username: params[:username])
    if recruiter&.authenticate(params[:password_digest])
      session[:recruiter_id] = recruiter.id
      render json: user, status: :created
    else
      render json: { errors: ["Invalid Username or Password"] }, status: :unauthorized
    end
  end

  def destroy
    session.delete :recruiter_id
    head :no_content
  end   
end
