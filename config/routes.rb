Rails.application.routes.draw do
  root to: 'products#index'
  get '/import', to: 'products#products_import'
  get '/import-photos', to: 'products#photos_import'
  get '/test', to: 'products#test'
  resources :products do
  collection { post :import }
  collection {post :import_img}
  end
end
