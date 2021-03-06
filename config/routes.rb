Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index'
  resources :posts
  resources :users
  get '/login',       to: 'sessions#new'
  post '/login',      to: 'sessions#create'
  delete '/logout',   to: 'sessions#destroy'
  get '/write',       to: 'posts#new'
  post '/write',      to: 'posts#create'
end
