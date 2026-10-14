Rails.application.routes.draw do
  get "home", to: "home#index"
  root "home#index"

  resources :laboratories
  resources :classlists
  resources :sections
  resources :subjects
  resources :teachers
  resources :students
  resources :departments
end
