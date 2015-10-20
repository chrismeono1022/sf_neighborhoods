Rails.application.routes.draw do
  root 'neighborhoods#index'
  resources :neighborhoods, only:[:index]
end
