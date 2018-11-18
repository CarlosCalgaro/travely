Rails.application.routes.draw do
  resources :items
  resources :carts
  resources :products
  resources :stablishments
  get 'home/index'

  get 'teste/test'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to: "home#index"



end
