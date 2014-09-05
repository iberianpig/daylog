class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  protect_from_forgery with: :null_session

  helper_method :require_authentication
  helper_method :current_user
  helper_method :mobile_user

  def require_authentication
    if current_user
      return
    elsif mobile_user
      return
    end
    respond_to do |format|
      format.html { redirect_to root_path, notice: "loginしてください" }
      format.json { render json: "loginしてください", status: :forbidden }
    end
  end

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    # 一度current_userになれば次回以降は許可される
  end

  def mobile_user
    if @mobile_user
      return
    end

    unless token = request.headers["Authorization"]
      return
    end


    fb_user = FbGraph::User.me(token)
    fb_user = fb_user.fetch

    user = User.find_by_uid(fb_user.identifier)

    session[:user_id] = user.id

    @current_user=user

  end

end
