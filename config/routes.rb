Rails.application.routes.draw do

  get "/resumes/:id" => "resumes#show"
  get "/resumes/:id/edit" => "resumes#edit"
  patch "/resumes/:id" => "resumes#update"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
