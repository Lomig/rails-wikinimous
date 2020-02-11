# frozen_string_literal: true

##
# Article Controller
class ArticlesController < ApplicationController
  before_action :find_article, only: %i[destroy edit show update]

  def index
    @articles = Article.all
  end

  def create
    Article.create(article_params)
    redirect_to :root
  end

  def new
    @article = Article.new
  end

  def edit; end

  def show; end

  def update
    @article.update(article_params)
    redirect_to article_path(@article)
  end

  def destroy
    @article.destroy
    redirect_to :root
  end

  private

  def find_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
