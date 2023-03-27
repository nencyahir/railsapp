Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  get 'products/search', to: 'products#search'
  resources :products
  root "users#new"

  resources :users

 
  
end

