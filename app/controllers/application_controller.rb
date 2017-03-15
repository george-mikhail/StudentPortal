class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  def current_user
  id = session[:user_id]
  @current_user ||= Unirest.get("http://localhost:3000/api/students/#{id}").body if id
  end
  helper_method :current_user

  def authenticate_user!
    redirect_to '/login' unless current_user
  end

end
