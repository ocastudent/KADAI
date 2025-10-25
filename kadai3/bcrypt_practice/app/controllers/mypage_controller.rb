class MypageController < ApplicationController
  # ログインユーザーのみアクセス許可
  before_action :authenticate_user!

  def show
    # ログイン中のユーザー情報を取得
    @user = current_user
  end
end
