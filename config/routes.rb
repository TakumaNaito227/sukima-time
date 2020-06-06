Rails.application.routes.draw do
  devise_for :users
  root "home#top" 

  resources :messages, only: [:index, :new, :create] 
  
end
