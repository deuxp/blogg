class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    # validation handling on .save (which also returns truthy value)
    if @article.save
      redirect_to @article
    else
      render 'new' # this redirects to the 'new' action
    end
  end


  private
  def article_params
    params.require(:article).permit(:title, :text)
  end
end
