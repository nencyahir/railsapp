# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Difference between collection route and member route.

resources :posts do
  get 'preview', on: :member
  get 'search',  on: :collection
end


get '/posts/:id/preview', to: 'posts#preview'
# preview_post_path


get '/posts/search', to: 'posts#search'
# search_posts_path