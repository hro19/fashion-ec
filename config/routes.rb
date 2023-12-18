Rails.application.routes.draw do
  root "products#index"

  resources :products, only: [:show]

  resources :line_items, only: [:create]

  resources :carts, only: [:index]
end
