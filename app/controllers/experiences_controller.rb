class ExperiencesController < ApplicationController

  def index
    id = session[:user_id]

    @user = Unirest.get("http://localhost:3000/api/students/#{id}").body
    @experiences = @user['experiences']

  end

  def show

    id = session[:user_id]

    @user = Unirest.get("http://localhost:3000/api/students/#{id}").body
    
  end

  def edit
    id = session[:user_id]

    @user = Unirest.get("http://localhost:3000/api/students/#{id}").body
    @experiences = @user['experiences']
    puts @experiences
    @experiences.each do |experience|
      if experience['id'].to_i == params[:experience_id].to_i
        puts "this is happening"
        puts experience
        @experience = experience
        break
      end
    end
  end


  def update

    id = params[:experience_id]

    @user = Unirest.patch("http://localhost:3000/api/experiences/#{id}", :parameters => {
      company_name: params[:company_name],
      job_title: params[:job_title],
      start_date: params[:start_date],
      end_date: params[:end_date],
      details: params[:details],
      student_id: session[:user_id]
      }).body
    redirect_to '/experiences'
    
  end

  def new

  end

  def create
    @user = Unirest.post("http://localhost:3000/api/experiences/", :parameters => {
      company_name: params[:company_name],
      job_title: params[:job_title],
      start_date: params[:start_date],
      end_date: params[:end_date],
      details: params[:details],
      student_id: session[:user_id]
      }).body
    redirect_to '/experiences'
  end

end
