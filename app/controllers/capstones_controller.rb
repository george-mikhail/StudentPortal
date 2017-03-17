class CapstonesController < ApplicationController
  def show

    id = session[:user_id]

    @user = Unirest.get("http://localhost:3000/api/students/#{id}").body
    @capstones = @user['capstones']
    
  end
  def edit

    id = params[:capstone_id]
    @resume = Unirest.get("http://localhost:3000/api/students/#{id}").body
    @capstones = @user['capstones']
    
  end


  def update

    id = params[:capstone_id]

    @capstone = Unirest.patch("http://localhost:3000/api/students/#{id}", :parameters => {capstone_name: params[:capstone_name], short_description: params[:short_desctiption], website_url: params[:website_url], github_url: params[:github_url] #photo?
      }).body
    redirect_to '/capstones'
    
  end
end

