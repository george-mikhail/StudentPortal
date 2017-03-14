Rails.application.routes.draw do

  get "/resumes/:id" => "resumes#show"
  get "/resumes/:id/edit" => "resumes#edit"
  patch "/resumes/:id" => "resumes#update"

  get "/login" => "sessions#new"
  
end
