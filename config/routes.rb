Rails.application.routes.draw do
  
  get 'blogs/new'
  post'/blogs',to: "blogs#create"
  root "pages#index"
  get 'sessions/new'
  get 'favorites/index'
  get 'topics/new'
  get 'users/new'
  get 'pages/index'
  get 'pages/introduction'
  get 'pages/presentation'
  get 'pages/shopping'
  get 'pages/library'
  get 'login',to: 'sessions#new'
  post 'login',to: 'sessions#create'
  delete 'logout',to: 'sessions#destroy'
  get '/favorites',to:'favorites#index'
  post'/favorites',to:'favorites#create'
  
  resources :users
  resources :topics
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
