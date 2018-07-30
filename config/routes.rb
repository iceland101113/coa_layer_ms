Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :layers
  root "layers#index"

  resources :categories

  post "ca_layer", to: "layers#ca_layer"
  post "query_layer", to: "layers#query_layer"
  post "query_category", to: "layers#query_category"

  post "test_layer", to: "layers#test"
end
