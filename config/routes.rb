Rails.application.routes.draw do
  root to: "pages#home"
  
  devise_for :users
  
  # Resources
  resources :products, only: [:index] do
    resources :items, only: [:create, :update, :delete]
  end
  resources :orders, only: [:index, :update]
  
  # Custom routes
  get "/cart", to: "pages#cart", as: :cart
end
