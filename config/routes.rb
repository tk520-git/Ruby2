Rails.application.routes.draw do
  
  root 'pages#index'
  
  get 'topics/index'
  get 'sessions/new'
  get 'pages/help'
  
  get     '/login',   to: 'sessions#new'
  post    '/login',   to: 'sessions#create'
  delete  '/logout',  to: 'sessions#destroy'
  
  get  'favorites/index'
  post '/favorites', to: 'favorites#create'
  delete '/favorites', to: 'favorites#destroy'
  
  get 'comments/new'
  
  resources :users
  resources :topics
  resources :comments
  
end
