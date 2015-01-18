Rails.application.routes.draw do
  root to: 'clips#index'
  devise_for :users
  # resources :friendships
  
  resources :clips do
    put :favorite, on: :member
    put :unfavorite, on: :member
    get :like, on: :member, to: 'clips#upvote'
    get :dislike, on: :member, to: 'clips#downvote'
  end

  resources :users do
  put :create_friendship, on: :member
  end

 #used
  get 'users' => "users#index"
  get 'users/friends' => "users#friendships"
  get '/user/favorites' => "users#favorites"
  get '/user/friends' => "users#friends"
 
  #waiting for development
  # get '/my_account' => "users#show"
  # get '/user/:username' => "users#show"
  # get '/search' => "clips#search"
  # get '/waiting' => "clips#pick"
  # get '/add_clip' => "clips#create"
  # get '/add_category' => "categories#create" 
  # get '/top/:period' => "clips#top"
  # get '/top/:category' => "clips#cat_top"
  
end
