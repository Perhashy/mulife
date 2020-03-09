Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root to: "contents#index"
  resources :contents do
    resources :comments, only: :create
  end
  resources :users, only: :show
end
