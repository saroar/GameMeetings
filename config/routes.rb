Rails.application.routes.draw do
  root 'meetings#index'
  resources :meetings
  resources :venues
end
