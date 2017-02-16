class SessionsController < ApplicationController

  def new
    # log in page
    render :new
  end

  def create
    # performs logic of generating a session_token for the user if they don't already have one
    # also matches the users new session_token with the session[:session_token]
    @user = User.validate_credentials(session_params[:email], session_params[:password])
    # fail
    if @user
      login!(@user)
      redirect_to user_url(@user)
    else
      flash[:errors] = ["Invalid log in credentials"]
      render :new
    end
  end

  def destroy
    # logs the user out and resets their session_token
    if current_user
      logout!
      redirect_to new_session_url
    else
      flash[:errors] = ["Not currently logged in"]
    end
  end

  private

  def session_params
    params.require(:user).permit(:email, :password, :session_token)
  end

end
