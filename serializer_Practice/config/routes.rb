Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :book
    end
  end

  namespace :api do
    namespace :v2 do
      resources :book
    end
  end

  namespace :api do
    namespace :v3 do
      resources :book
    end
  end


  get '/not_found', to: 'book#not_found'
  get '/unauthorized', to: 'book#unauthorized'
  get '/server_error', to: 'book#server_error'
end
