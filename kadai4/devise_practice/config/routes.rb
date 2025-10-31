Rails.application.routes.draw do
  devise_for :users
  root "home#index"
  
  devise_for :users  # Deviseのルーティングを設定
  
  resources :users, only: [:show]
end
