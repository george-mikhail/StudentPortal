Rails.application.routes.draw do

  get "/students/:id" => "resumes#show"
  get "/students/:id/edit" => "resumes#edit"
  patch "/students/:id" => "resumes#update"

  get "/students/capstones" => "capstones#show"
  get "/students/capstones/edit" => "capstones#edit"
  patch "/students/capstones" => "capstones#update"


  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  
end
