Rails.application.routes.draw do
  resources :pictures, only: [:show, :destroy, :index, :create, :update]
end