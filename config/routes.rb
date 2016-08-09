Rails.application.routes.draw do
  root "welcomes#index"
  get 'welcomes/index'

  get 'competitions/index'

  get 'users/show'

  resources :memberships, only: [:show, :create, :update, :destroy]
  resources :users
  resources :competitions
  resource :sessions
end
