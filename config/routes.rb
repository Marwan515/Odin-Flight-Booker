Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :flights
  resources :airports
  resources :bookings, only: [:new, :create, :show]
  # Defines the root path route ("/")
  # root "articles#index"
  root "flights#index"
end
