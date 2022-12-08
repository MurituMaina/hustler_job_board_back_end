class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

  before_action :authorize, only: [:index]

  private

  def authorize
    @loggeIn_recruiter = Recruiter.find_by(id: session[:recruiter_id])
    render json: { errors: ["Not authorized"] }, status: :unauthorized unless @loggeIn_recruiter
  end

  def render_unprocessable_entity_response(exception)
    render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
  end
end
