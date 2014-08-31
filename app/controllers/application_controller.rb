class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  protect_from_forgery with: :null_session

  helper_method :require_authentication
  helper_method :current_user

  def require_authentication
    unless current_user
      respond_to do |format|
        format.html { redirect_to root_path, notice: "loginしてください" }
        format.json { render json: "loginしてください", status: :forbidden }
      end
    end
  end

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    # debugger
  end

end
