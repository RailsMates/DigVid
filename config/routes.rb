Rails.application.routes.draw do
  
  root to: 'clips#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
 #used
  get '/user/favorites' => "users#favorites"
  get '/user/friends' => "users#friends"
  get '/waitings' => "clips#waitings"
  get '/top/today' => "clips#today"
  get '/top/last_week' => "clips#last_week"
  get '/top/last_month' => "clips#last_month"
  get 'clips/search' => "clips#search"
  get 'clips/search_results' => "clips#search_results" 
  get 'categories/:id' => "categories#show"
 
  resources :categories, only: [:show]
  resources :clips, only: [:add, :create]
  resources :clips do
    get :favorite, on: :member
    get :vote, on: :member
  end

  resources :users
  resources :users do
    get :friendship, on: :member
  end
  
end
