Rails.application.routes.draw do
  devise_for :users
  root to: 'profiles#index'
  resources :profiles do
    resources :comments, only: :create
  end
  resources :users, only: :show
end
