Rails.application.routes.draw do
  get 'trips/index'
  devise_for :users
  root 'trips#index'
  resources :trips, only: [:index, :new, :create]
end
