Rails.application.routes.draw do
  root 'meetings#index'
  resources :meetings




  resources :games
end
