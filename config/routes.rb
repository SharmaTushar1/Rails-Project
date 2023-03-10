Rails.application.routes.draw do
  resources :friends
  get 'home/about', as: :aboutUs
  root to: 'home#index'
end
