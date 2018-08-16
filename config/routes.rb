Rails.application.routes.draw do
  match "/contacts/:importer/callback" => "google#index", :via => [:get]
  match "/oauth2callback" => "google#contact", :via => [:get]
  
  resources :companies
  resources :users
  devise_for :users, path: 'accounts', controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    omniauth_callbacks: "omniauth_callbacks"
  }

  root to: "users#index"
end
