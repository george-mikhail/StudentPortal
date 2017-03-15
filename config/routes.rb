Rails.application.routes.draw do

  get "/students" => "resumes#show"


  get "/students/edit" => "resumes#edit"


  patch "/students" => "resumes#update"

  get "/login" => "sessions#new"

  
  post "/login" => "sessions#create"

  get "logout" => "sessions#destroy"
  
end
