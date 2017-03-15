require 'bcrypt'


class SessionsController < ApplicationController

  def new

  end

  def create

    id = params[:user_id]
    user = Unirest.get("http://localhost:3000/api/students/#{id}").body #will return a hash with student info for a particular student id

    my_password = BCrypt::Password.new(user['password_digest'])


    if my_password == params[:password]
      #encrypt password            #not encrypt
    # if user && user.authenticate(params[:password])
       session[:user_id] = user["id"]
       puts "****"
       puts user["id"]
       puts "****"
       flash[:success] = 'Successfully logged in!'
        redirect_to '/students'
        else
       flash[:warning] = 'Invalid email or password!'
       redirect_to '/login'
    end
  end   

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end
end