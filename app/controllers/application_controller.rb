class ApplicationController < ActionController::Base
  before_action :authorize
  protect_from_forgery with: :exception

  protected
  def authorize
    unless User.find_by(id: session[:user_id])
        redirect_to login_url, notice:"You trying you could gain unathorised acess? Lol"
    end
  end
end
