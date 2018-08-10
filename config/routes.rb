Rails.application.routes.draw do
  
  resources :companies
  resources :users
  devise_for :users
  root to: "users#index"
end
