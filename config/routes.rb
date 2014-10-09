Rails.application.routes.draw do
  resources :stores

  resources :addresses

  resources :chain_of_stores

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
