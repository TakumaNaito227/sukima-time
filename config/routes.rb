Rails.application.routes.draw do
  devise_for :users
  root "home#top" 
  resources :messages, only: [:index, :new, :create, :show, :destroy, :edit, :update] 
  resources :users, only: [:show]
  resources :cities, only: [:show]
end