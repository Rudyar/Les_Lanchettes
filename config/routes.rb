Rails.application.routes.draw do
  
  root 'home#index'

  resources :sessions, only: [:new, :create, :destroy]


  # Admin (admin pannle is called Kath, it's easy for my mother to understand :) )
  namespace :kath do
    root 'admin#index'
    resources :periods
    resources :availabilities
  end
end
