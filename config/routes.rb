Rails.application.routes.draw do
  resources :relationships
  resources :carts
  resources :orders
  resources :ratings
  resources :products
  resources :profiles
  get 'home/index'

   root 'home#index'
  devise_for :users, controllers: {
       sessions: 'users/sessions'
     }
 get 'users/sign_up'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
