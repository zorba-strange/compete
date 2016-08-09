Rails.application.routes.draw do
  root "welcome#index"
  get 'welcome/index'

  get 'competition/index'

  get 'user/show'

  resources :user
  resources :competition
  resource :session
end
