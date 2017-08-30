class ArticlesController < ApplicationController
	before_action :setarticle, only: [:show, :edit, :update, :destroy]
	
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

	def edit
   		@article = Article.find(params[:id])
  	end

  	def update
  		@article = Article.find(params[:id])
    	@article.update(article_params)
    	redirect_to article_path
  	end

  	def destroy
		@article = Article.find(params[:id])
    	@article.destroy
    	redirect_to articles_path
  	end

	private

	def setarticle
		@article = Article.find(params[:id])
	end

	def article_params
		params.require(:article).permit(
								:title,
								:body,
								:author
								)
	end
end
