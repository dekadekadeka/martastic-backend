Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  resources :stations, only: [:index, :show]
  resources :pics, only: [:index, :show, :create, :destroy]
  resources :friendships, only: [:index, :create, :destroy]
  resources :comments, only: [:index, :create, :destroy]
end
