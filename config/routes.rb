Rails.application.routes.draw do
  resources :relationships
  resources :carts
  resources :orders
  resources :ratings
  resources :products
  resources :profiles
  resources :charges

  get 'home/index'
  root 'home#index'
  devise_for :users
  # get 'users/sign_up'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
