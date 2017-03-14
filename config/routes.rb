Rails.application.routes.draw do
  resources :videos, only: [:new, :create]
  # OmniAuth
  get '/auth/:provider/callback', to: 'sessions#create'

  root to: 'pages#index'
end