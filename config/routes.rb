Rails.application.routes.draw do
  resources :relationships
  resources :carts
  resources :orders
  resources :ratings
  resources :products
  resources :profiles

  get 'home/index'
  root 'home#index'
  devise_for :users
  get 'users/sign_up'
  get "user/:id"    => redirect("/users/%{id}")
  # get 'articles/:username/:id' to 'articles#show'
  # get '/profiles/:id' to 'profiles#show'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
