# ...existing code...
class HomeController < ApplicationController
  def index
    # ログインしている場合はトップを見てもマイページに飛ばしたければここでリダイレクト可（要件ではトップは表示可）
  end
end
# ...existing code...