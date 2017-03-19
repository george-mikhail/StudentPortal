class EducationsController < ApplicationController

  def index
    id = session[:user_id]

    @user = Unirest.get("http://localhost:3000/api/students/#{id}").body #returns a hash
    @educations = @user['educations'] #returns an array
  end

  def show

    id = session[:user_id]

    education_id = params[:id].to_i

    @user = Unirest.get("http://localhost:3000/api/students/#{id}").body #returns a hash
    @education = @user['educations'][education_id] #returns a hash where the id matches education_id
    
  end

  def edit

    id = session[:user_id]

    education_id = params[:id].to_i

    @user = Unirest.get("http://localhost:3000/api/students/#{id}").body #returns a hash
    @education = @user['educations'][education_id] #returns a hash where the id matches education_id
    
  end

  def update

    id = session[:user_id]

    @user = Unirest.patch("http://localhost:3000/api/students/#{id}", :parameters => {start_date: params[:start_date], end_date: params[:end_date], degree: params[:degree], university_name: params[:university_name], detail: params[:details]
      }).body
    # redirect_to "/students/education/:education/#{id}"
    
  end
end
