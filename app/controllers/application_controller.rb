class ApplicationController < ActionController::Base
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def render_unprocessable_entity_response
    render json: {
      status: 500,
      message: "Internal Server Error"
    }
  end

  def render_not_found_response
    render json: {
      status: 404,
      message: "Not found"
    }
  end
end
