Rails.application.routes.draw do
  resources :games
  resources :characters, only: [:index]
end
