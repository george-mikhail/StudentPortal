Rails.application.routes.draw do

  get "/students" => "resumes#show"
  get "/students/edit" => "resumes#edit"
  patch "/students" => "resumes#update"

  get "/educations" => "educations#index"
  post "/educations/new" => "educations#create"
  get "/educations/:education_id" => "educations#show"
  get "/educations/:education_id/edit" => "educations#edit"
  patch "/educations/:education_id" => "educations#update"

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"
  
end
