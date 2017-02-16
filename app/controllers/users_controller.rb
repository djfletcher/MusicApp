class UsersController < ApplicationController

  def new
    # sign up page
    @user ||= User.new
    render :new
  end

  def create
    # performs login logic by rerouting to session#create (not session#new)
    @user = User.new(user_params)

    if @user.save
      login!(@user)
      redirect_to user_url(@user)
    else
      flash.now[:errors] = @user.errors.full_messages
      render :new
    end
  end

  def show
    # just displays the users email for now
    if current_user && current_user.id == params[:id].to_i
      render :show
    else
      flash[:errors] = ["Invalid log in credentials"]
      redirect_to new_session_url
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end

end
