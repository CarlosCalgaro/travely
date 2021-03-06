Rails.application.routes.draw do

  resources :reservations
  get "reservations/:id/remove", to: 'reservations#destroy', as: 'destroy_reservation'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    confirmations: 'users/confirmations',
    unlocks: 'users/unlocks'
  }

  resources :items, except: [:new, :create]

  resources :products
  post "products/validate", to: 'products#validate', as: 'validate_product'
  get "products/:id/remove", to: 'products#destroy', as: 'destroy_product'

  resources :stablishments

  #post "carts/add_item/:product_id", to: "carts#add_item", as: 'add_item_to_cart'
  delete "carts/remove_item/:item_id", to: "carts#remove_item", as: 'remove_item_from_cart'

  get "items/new/:product_id", to: 'items#new', as: 'new_item'
  get "items/:id/checkout", to: "items#checkout", as: 'checkout_item'
  post "items/create/:product_id", to: 'items#create', as: 'create_item'

  get 'home/index'
  get 'home/checkout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
