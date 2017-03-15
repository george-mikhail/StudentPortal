class ResumesController < ApplicationController

  def show

    id = params[:user_id]

    @user = Unirest.get("http://localhost:3000/api/students/#{id}").body
    
  end
  def edit

    id = params[:id]
    @resume = Unirest.get("http://localhost:3000/api/students/#{id}").body
    
  end


  def update

    id = params[:id]

    @resume = Unirest.patch("http://localhost:3000/api/students/#{id}", :parameters => {first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password_digest], phone_number: params[:phone_number], short_bio: params[:short_bio], linkedin_url: params[:linkedin_url], twitter_handle: params[:twitter_handle], website_url: params[:website_url], online_resume: params[:online_resume], github_url: params[:github_url] #photo?
      }).body
    redirect_to resume_path(@resume['id'])
    
  end
end
