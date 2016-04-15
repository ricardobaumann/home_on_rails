class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  skip_before_action :verify_authenticity_token

  rescue_from ActiveRecord::DeleteRestrictionError, with: :handle_error

  def handle_error(exception)
  	p exception.backtrace.join("\n")
  	redirect_to controller: 'error', action: 'show', exception: exception, stack: exception.backtrace.join("\n")[0,100]
  end
end
