Rails.application.routes.draw do
  root to: 'home#index'
  patch 'capture', to: 'pokemon#capture'
  devise_for :trainers
  resources :trainers
end
