Rails.application.routes.draw do
  resources :wines, only: [:index]
  resources :users
end
