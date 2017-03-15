class ResumesController < ApplicationController

  def show

    id = session[:user_id]

    @user = Unirest.get("http://localhost:3000/api/students/#{id}").body
    
  end
  def edit

    id = session[:user_id]
    @user = Unirest.get("http://localhost:3000/api/students/#{id}").body
    
  end


  def update

    id = session[:user_id]

    @user = Unirest.patch("http://localhost:3000/api/students/#{id}", :parameters => {first_name: params[:first_name], last_name: params[:last_name], email: params[:email], phone_number: params[:phone_number], short_bio: params[:short_bio], linkedin_url: params[:linkedin_url], twitter_handle: params[:twitter_handle], website_url: params[:website_url], online_resume: params[:online_resume], github_url: params[:github_url], photo: params[:photo]
      }).body
    redirect_to '/students'
    
  end
end
