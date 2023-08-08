Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  get "/dogs" => "dogs#index"
  get "/dogs/:id" => "dogs#show"
  post "/dogs" => "dogs#create"
end
