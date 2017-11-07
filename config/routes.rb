Rails.application.routes.draw do
  resources :relationships,       only: [:create, :destroy]
  resources :carts
  resources :orders
  resources :ratings
  resources :products
  resources :profiles
  resources :charges
  get 'contact' => 'static_pages#contact'
  get 'home/index'
  root 'home#index'
   devise_for :users

  resources :users do
    member do
      get :following, :followers
    end
  end

  # get 'users/sign_up'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
