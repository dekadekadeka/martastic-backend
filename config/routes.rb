Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :stations
  resources :pics
  resources :friendships
  resources :pic_comments
  resources :station_comments
end
