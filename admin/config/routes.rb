Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # root to: "sessions#login"
  get 'sessions/login', to:'sessions#login'
  get 'products/search', to: 'products#search'
  resources :products

  root "users#new"
  get '/login', to: 'sessions#create'
  post '/login', to: 'sessions#create'
  resources :users, only: [:new, :create, :update, :edit, :show, :destroy]

 
  
end

