Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root to: "contents#index"
  namespace :contents do
    resources :searches, only: :index
  end
  resources :contents do
    resources :comments, only: [:create, :destroy]
  end
  resources :users, only: :show
  get "users/:id", to: "users#show", as: :mypage
  post   '/like/:content_id' => 'likes#like',   as: 'like'
  delete '/like/:content_id' => 'likes#unlike', as: 'unlike'
  resources :likes, only: :index
  resources :parts, only: [:index, :show]
  resources :tags, only: :index
end
