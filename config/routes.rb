Rails.application.routes.draw do
  root to: 'secerts#index'
  get '/products', to: 'secerts#products'
  resources :secrets
end
