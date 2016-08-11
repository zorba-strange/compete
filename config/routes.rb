Rails.application.routes.draw do
  root "welcomes#index"
  get 'welcomes/index'

  get 'competitions/index'

  get 'users/show'

  resources :memberships, only: [:show, :create, :update, :destroy]
  resources :users do 
    resources :memberships, only: [:destory]
    member do
      delete 'leave_membership'
    end
  end

  resources :competitions do 
    resources :memberships ,only: [:create]
    member do 
      delete 'membership_delete'
    end
  end

  resource :sessions
end
