Rails.application.routes.draw do
  root to: 'clips#index'
  devise_for :users

  get '/waiting' => "clips#pick"
  get '/search' => "clips#search"
  get '/my_account' => "users#show"
  get '/user/:username' => "users#show"
  get '/add_clip' => "clips#create"
  get '/add_category' => "categories#create"
  get '/top/:period' => "clips#top"
  get '/top/:category' => "clips#cat_top"

end
