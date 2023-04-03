Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "users/registrations"}


  get 'user/index'
  resources :company
 
   
  get 'project/index'

  # get 'registrations/:id', to: 'registrations#welcome'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
