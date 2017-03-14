class SessionsController < ApplicationController

  def new

  end
  def create
    user = Unirest.get("http://[xx]api/v1/resumes/#{id}").body
    if user && user.authenticate(params[:password])
      session[:user_id] = user[:id]
      flash[:success] = 'Successfully logged in!'
      # redirect_to '/'
    else
      flash[:warning] = 'Invalid email or password!'
      # redirect_to '/login'
    end
  end
    
  end
end
