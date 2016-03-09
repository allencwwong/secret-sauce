Rails.application.routes.draw do
  root to: 'products#index'
  get '/import', to: 'products#products_import'
  get '/import-photos', to: 'products#photos_import'
  resources :products do
  collection { post :import }
  collection {post :import_img}
  end
end
