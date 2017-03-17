Rails.application.routes.draw do


  get "/students/:id" => "resumes#show"
  get "/students/:id/edit" => "resumes#edit"
  patch "/students/:id" => "resumes#update"

  get "/capstones" => "capstones#show"
  post "/capstones/new" => "capstones#create"
  get "/capstones/:capstone_id" => "capstones#show"
  get "/capstones/:capstone_id/edit" => "capstones#edit"
  patch "/capstones/:capstone_id" => "capstones#update"


  get "/students" => "resumes#show"
  get "/students/edit" => "resumes#edit"
  patch "/students" => "resumes#update"
  
  get "/experiences" => "experiences#index"
  get "/experiences/new" => "experiences#new"
  post "/experiences" => "experiences#create"
  get "/experiences/:experience_id" => "experiences#show"
  get "/experiences/:experience_id/edit" => "experiences#edit"
  patch "/experiences/:experience_id" => "experiences#update"


  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"
  
end
