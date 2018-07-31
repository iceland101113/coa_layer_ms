Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :layers
  root "layers#index"

  resources :categories

  get "ca_layer", to: "layers#ca_layer"
  get "query_layer", to: "layers#query_layer"
  get "query_category", to: "layers#query_category"

end
