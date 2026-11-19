Rails.application.routes.draw do
  get "home", to: "home#index"
  root "home#index"

  get    "login",  to: "sessions#new"
  post   "login",  to: "sessions#create"
  delete "logout", to: "sessions#destroy"


  resources :laboratories
  resources :classlists
  resources :sections
  resources :subjects
  resources :teachers
  resources :students
  resources :departments
end
