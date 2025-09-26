class ArticlesController < ApplicationController
  def new
    # 投稿一覧を作成するための殻のインスタンス
    @article = Article.new
  end

  def create 
    @article = Article.new(article_params)

    if @article.save
      redirect_to articles_path, notice: "新規投稿しました"
    else
      render :new, status: :unprocessble_entity
    end
  end

  def index
    @articles = Article.all 
  end

  def show 
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to article_path, notice: "投稿を更新しました"
    else
      render :edit
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path, alert: "削除しました"
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
