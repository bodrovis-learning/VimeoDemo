Rails.application.routes.draw do
  # OmniAuth
  get '/auth/:provider/callback', to: 'sessions#create'

  root to: 'pages#index'
end