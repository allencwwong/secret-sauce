Rails.application.routes.draw do
  root to: 'products#index'
  get '/import', to: 'products#products_import'
  resources :products do
  collection { post :import }
  end
end
