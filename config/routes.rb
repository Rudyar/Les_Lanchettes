Rails.application.routes.draw do

  root 'home#index'

  resources :sessions, only: [:new, :create, :destroy]
  resources :contacts, only: [:create]


  # Admin (admin pannle is called Kath, it's easy for my mother to understand :) )
  namespace :kath do
    root 'admin#index'
    
    resources :periods
    resources :availabilities
    resources :contracts

    post "availabilities/toggle_availability_state" => "availabilities#toggle_availability_state"
  end
end
