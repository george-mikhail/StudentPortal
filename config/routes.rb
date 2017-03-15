Rails.application.routes.draw do

  get "/students/:id" => "resumes#show"


  get "/students/:id/edit" => "resumes#edit"


  patch "/students/:id" => "resumes#update"

  get "/login" => "sessions#new"

  
  post "/login" => "sessions#create"

  get "logout" => "sessions#destroy"
  
end
