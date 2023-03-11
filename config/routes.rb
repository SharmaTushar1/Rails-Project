Rails.application.routes.draw do
  devise_for :users
 # had issues with signup so explicitly added destroy session
devise_scope :user do  
   get '/users/sign_out' => 'devise/sessions#destroy'     
end
  resources :friends
  get 'home/about', as: :aboutUs
  root 'home#index'
end
