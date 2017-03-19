Rails.application.routes.draw do

  get "/students/:id" => "resumes#show"
  get "/students/:id/edit" => "resumes#edit"
  patch "/students/:id" => "resumes#update"

  get "/capstones" => "capstones#index"
  post "/capstones/new" => "capstones#create"
  get "/capstones/:capstone_id" => "capstones#show"
  get "/capstones/:capstone_id/edit" => "capstones#edit"
  patch "/capstones/:capstone_id" => "capstones#update"
  
  get "/experiences" => "experiences#index"
  get "/experiences/new" => "experiences#new"
  post "/experiences" => "experiences#create"
  get "/experiences/:experience_id" => "experiences#show"
  get "/experiences/:experience_id/edit" => "experiences#edit"
  patch "/experiences/:experience_id" => "experiences#update"

  get "/educations" => "educations#index"
  post "/educations/new" => "educations#create"
  get "/educations/:education_id" => "educations#show"
  get "/educations/:education_id/edit" => "educations#edit"
  patch "/educations/:education_id" => "educations#update"

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"
  
end
