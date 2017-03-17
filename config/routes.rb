Rails.application.routes.draw do

  get "/students/:id" => "resumes#show"
  get "/students/:id/edit" => "resumes#edit"
  patch "/students/:id" => "resumes#update"

  get "/capstones" => "capstones#show"
  post "/capstones/new" => "capstones#create"
  get "/capstones/:capstone_id" => "capstones#show"
  get "/capstones/:capstone_id/edit" => "capstones#edit"
  patch "/capstones/:capstone_id" => "capstones#update"


  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  
end
