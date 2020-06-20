Rails.application.routes.draw do
  root to: "pages#home"

  devise_for :users
  
  resources :products, only: [:index] do
    resources :items, only: [:create, :update, :delete]
  end
  get "/cart", to: "pages#cart", as: :cart
end
