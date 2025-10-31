class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user
  before_action :ensure_current_user

  def show
  end

  private

def set_user
  @user = User.find_by(id: params[:id])
  redirect_to root_path, alert: 'ユーザーが見つかりません' if @user.nil?
end

  # 他ユーザのマイページ閲覧を防ぎ、未ログインは authenticate_user! で弾かれる
  def ensure_current_user
    redirect_to root_path unless @user == current_user
  end
end
