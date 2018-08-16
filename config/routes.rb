Rails.application.routes.draw do
  
  resources :companies
  resources :users
  devise_for :users, path: 'accounts', controllers: {omniauth_callbacks: "omniauth_callbacks"}
  root to: "users#index"
end
