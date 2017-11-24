Rails.application.routes.draw do
  root 'products#index'
  resources :global_msrps, only: [:edit, :update]
  resources :products
  resources :prices
  resources :components
  resources :manufacturers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
