Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "about", to: "about#index"

  get "password",  to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update"
  
  get "signup", to: "registrations#new"
  post "signup", to: "registrations#create"
  
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"

  delete "logout", to: "sessions#destroy" 

  get "password/reset", to: "password_resets#new"
  post "password/reset", to: "password_resets#create"
  get "password/reset/edit", to: "password_resets#edit"
  patch "password/reset/edit", to: "password_resets#update"
  root to: "main#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
