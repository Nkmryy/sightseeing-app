Rails.application.routes.draw do
  get 'trips/index'
  devise_for :users
  root 'trips#index'
  resources :trips do
    resources :comments, only: :create
  end
end
