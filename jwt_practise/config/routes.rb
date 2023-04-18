Rails.application.routes.draw do
  post '/login', to: 'authentication#login'
  resources :users
  resources :posts, only: [:index, :show, :create] do

    resources :comments, only: [:index, :create]

  end

end