Rails.application.routes.draw do
  root "home#top" 

  resources :messages, only: [:index, :new, :show] 
  
end
