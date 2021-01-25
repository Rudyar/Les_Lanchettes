Rails.application.routes.draw do
  
  root 'home#index'

  resources :sessions, only: [:new, :create, :destroy]
  
  # get    '/login',   to: 'sessions#new'
  # post   '/login',   to: 'sessions#create'
  # delete '/logout',  to: 'sessions#destroy'


  # Admin (admin pannle is called Kath, it's easy for my mother to understand :) )
  namespace :kath do
    root 'admin#index'
  end
end
