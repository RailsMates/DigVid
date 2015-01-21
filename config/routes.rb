Rails.application.routes.draw do
  root to: 'clips#index'
  devise_for :users
  # resources :friendships

  

 #used
  get '/user/favorites' => "users#favorites"
  get '/user/friends' => "users#friends"
  get '/waitings' => "clips#waitings"
  get '/top/today' => "clips#today"
  get '/top/last_week' => "clips#last_week"
  get '/top/last_month' => "clips#last_month"
  get 'clips/search' => "clips#search"
  get 'clips/search_results' => "clips#search_results" 
 
 resources :clips, only: [:add, :create]
  resources :clips do
    get :favorite, on: :member
    get :vote, on: :member
  end

  resources :users
  resources :users do
    get :create_friendship, on: :member
  end
  #waiting for development
  # get '/my_account' => "users#show"
  # get '/user/:username' => "users#show"
  
  
  # get '/add_clip' => "clips#create"
  # get '/add_category' => "categories#create" 
  
  # get '/top/:category' => "clips#cat_top"
  
end
