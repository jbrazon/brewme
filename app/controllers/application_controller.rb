class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def require_admin!
  	return redirect_to new_user_session_path unless current_user.try(:admin)
  	return true
  end	
end
