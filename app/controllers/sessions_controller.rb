class SessionsController < ApplicationController
  skip_before_action :authorize
  def new
  end

  def create
    user = User.find_by(username: params[:name])
    if user
        session[:user_id] = user.id
        session[:user_username] = user.username
        redirect_to user, alert: "User logged in :D"
    else
        redirect_to login_url, alert: "Invalid Username or Password"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_url, alert:"Successfully logget out :D"
  end
end
