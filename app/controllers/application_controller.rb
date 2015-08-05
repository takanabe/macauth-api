class ApplicationController < ActionController::API
  rescue_from Exception, with: :handle_500

  rescue_from ActionView::MissingTemplate, with: :handle_400
  rescue_from ActionController::ParameterMissing, with: :handle_400
  # rescue_from ApplicationController::Forbidden, with: :handle_403
  # rescue_from ApplicationController::IpAddressRejected, with: :handle_403
  rescue_from ActionController::RoutingError, with: :handle_404
  rescue_from ActiveRecord::RecordNotFound,   with: :handle_404

  def handle_500(exception = nil)
    logger.info "Rendering 500 with exception: #{exception.message}" if exception
    render json: { error: '500 Internal Server Error' }, status: 500
  end

  def handle_400(exception = nil)
    logger.info "Rendering 400 with exception: #{exception.message}" if exception
    render json: { error: '400 Bad Request' }, status: 400
  end

  def handle_403(exception = nil)
  end

  def handle_404(exception = nil)
    logger.info "Rendering 404 with exception: #{exception.message}" if exception
    render json: { error: '404 Not Found' }, status: 404
  end

  def handle_root_request
    render json: { message: 'This is Mackun2 API !!' }, status: 200
  end
end
