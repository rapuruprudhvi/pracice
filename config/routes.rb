Rails.application.routes.draw do
  devise_for :customers
  devise_for :authors
 

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  resources :authors
  resources :homes
  resources :customers
  resources :suppliers
  resources :books  do
    resources:reviews
  end
  resources :orders
  resources :books do
    resources :reviews, only: [:new, :create]
  end 
  root "homes#index"
 
end
