module SessionsHelper

  def login(user)
    session[:user_id] = user.id
    @current_user = user
  end

  def current_user
    @current_user ||= Unirest.get("http://localhost:3000/api/students/#{id}").body
  end

  def logout
    @current_user = session[:user_id] = nil
  end

end

