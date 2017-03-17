class CapstonesController < ApplicationController
  def show

    id = params[:user_id]

    @user = Unirest.get("http://localhost:3000/api/students/capstones/#{id}").body
    
  end
  def edit

    id = params[:id]
    @resume = Unirest.get("http://localhost:3000/api/students/capstones/#{id}").body
    
  end


  def update

    id = params[:id]

    @capstone = Unirest.patch("http://localhost:3000/api/students/capstones/#{id}", :parameters => {capstone_name: params[:capstone_name], short_description: params[:short_desctiption], website_url: params[:website_url], github_url: params[:github_url] #photo?
      }).body
    redirect_to capstone_path(@capstone['id'])
    
  end
end

