Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  get '/init-state', to: 'auth#init_state'
  post '/add-friend', to: 'users#add_friend'
  resources :stations, only: [:index, :show, :update]
  resources :pics, only: [:index, :show, :update, :create, :destroy]
  resources :friendships, only: [:index, :create, :destroy]
  resources :comments, only: [:index, :create, :destroy]
end
