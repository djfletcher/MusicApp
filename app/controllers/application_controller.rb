class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  helper_method :current_user, :login!, :logged_in?, :logout!

  def login!(user)
    session[:session_token] = user.reset_session_token!
  end

  def logged_in?(user)
    session[:session_token] == user.session_token
  end

  def logout!
    if current_user.nil?
      flash[:errors] = ["No one is logged in!"]
    else
      current_user.reset_session_token!
      session[:session_token] = nil
    end
  end

  def current_user
    return nil unless session[:session_token]
    @current_user ||= User.find_by_session_token(session[:session_token])
  end

end
