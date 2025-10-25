Rails.application.routes.draw do
  # トップページのルートを home#index に設定
  root "home#index"

  # 他のルート設定
  devise_for :users
  get "home/index"
  get "mypage/show"
  resources :mypage, only: [:show]
  resources :products

  # ヘルスチェック用ルート
  get "up" => "rails/health#show", as: :rails_health_check
end
