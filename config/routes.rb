Rails.application.routes.draw do
  resources :items
  resources :carts
  resources :products
  resources :stablishments
  post "carts/add_item/:product_id", to: "carts#add_item", as: 'add_item_to_cart'
  delete "carts/remove_item/:item_id", to: "carts#remove_item", as: 'remove_item_from_cart'

  get 'home/index'

  get 'teste/test'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "home#index"

end
