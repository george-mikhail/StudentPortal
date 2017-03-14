class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  def current_user
  @current_user ||= Unirest.get("http://[xx]api/v1/resumes/#{id}").body if session[:user_id]
  end
  helper_method :current_user

  def authenticate_user!
    redirect_to '/login' unless current_user
  end

end
end
