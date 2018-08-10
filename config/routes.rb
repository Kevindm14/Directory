Rails.application.routes.draw do
  
  resources :companies, only: [:index, :show]
  resources :users
  devise_for :users
  root to: "home#index"
end
