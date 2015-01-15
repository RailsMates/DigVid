Rails.application.routes.draw do
  root to: 'clips#index'
  devise_for :users
  
  resources :clips do
  put :favorite, on: :member
  end

  get '/waiting' => "clips#pick"
  get '/search' => "clips#search"
  get '/waiting' => "clips#pick"
  #get '/my_account' => "users#show"
  #get '/user/:username' => "users#show"
  get '/user/favorites' => "users#favorites"
  get '/add_clip' => "clips#create"
  get '/add_category' => "categories#create" 
  get '/top/:period' => "clips#top"
  get '/top/:category' => "clips#cat_top"
  
end
