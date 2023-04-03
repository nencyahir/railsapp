Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "users/registrations"}


  # get 'user/index'
  # resources :company
 

  # Add the route for your new method

 
  
  devise_scope :user do
    get '/users/showuser', to: 'users/registrations#showuser'
  end
  # get 'registrations/:id', to: 'registrations#welcome'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
