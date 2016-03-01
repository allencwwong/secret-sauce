Rails.application.routes.draw do
  root to: 'products#index'
  get '/products', to: 'products#products'
  resources :products do
  collection { post :import }
  end
end
