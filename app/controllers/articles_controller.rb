class ArticlesController < ApplicationController
    def index
        @articles = Article.all
    end
    def new
    end
    
    def create
        @article = Article.new(params[:article])
        
        @article.save
        redirect_to @article
    end
end

private
    def article_params
        params.require(:article).permit(:title, :text)
    end