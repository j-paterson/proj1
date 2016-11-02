Rails.application.routes.draw do
  root to: 'home#index'
  patch 'capture', to: 'pokemon#capture'
  patch 'damage', to: 'pokemon#damage'
  devise_for :trainers
  resources :trainers
  resources :pokemon
end
