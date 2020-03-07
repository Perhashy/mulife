Rails.application.routes.draw do
  devise_for :users
  root to: "contents#index"
  resources :contents
  resources :users, only: :show
end
