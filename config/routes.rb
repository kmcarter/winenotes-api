Rails.application.routes.draw do
  post 'authenticate', to: 'auth#authenticate'

  resources :wines, only: [:index]
  resources :users
end
