class ErrorsController < ApplicationController
  def handle_error
    render json: {error: 'Invalid Json syntax'}, status: 400
  end
end
