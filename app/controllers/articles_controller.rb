class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
  end

  def new
  end

  def create
    # This is an INSTANCE of the article model being initialized in the action
    # Article is referring to the Model, not the Migration
    # The model is the object that is interacting with the db
    # Also remember that `params[:attribute]` contains the attributes that we are
    # interested in
    # that is the arg passed into the instance of the article
    
    # @article = Article.new(params[:article])
    @article = Article.new(article_params)

    @article.save
    redirect_to @article
  end


  private
  def article_params
    params.require(:article).permit(:title, :text)
  end
end
