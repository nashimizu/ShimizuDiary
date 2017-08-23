class ArticlesController < ApplicationController
	def index
		@articles = Article.all
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(article_params)
		@article.save
		redirect_to '/articles'
	end

	def show
		@article = Article.find(params[:id])
	end

	private
	def setarticle
		@article = Article.find(params[id])
	end
	def article_params
		params.require(:article).permit(:title, :body, :author)
	end




end
