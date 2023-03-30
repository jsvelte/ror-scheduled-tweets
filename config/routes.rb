Rails.application.routes.draw do
  get "about", to: "about#index"

  # Sign Up
  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  # Log In
  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  # Edit Password
  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update"

  delete "logout", to: "sessions#destroy"

  root to: "main#index"
end
