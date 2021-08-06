Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  get '/init-state', to: 'auth#init_state'

  resources :users
  post '/add-friend', to: 'users#add_friend'
  post '/delete-friend', to: 'users#delete_friend'

  resources :stations, only: [:index, :show, :update]
  resources :pics, only: [:index, :show, :update, :create, :destroy]
  resources :friendships, only: [:index, :create, :destroy]
  resources :comments, only: [:index, :create, :destroy]
end
