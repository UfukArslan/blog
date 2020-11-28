class ArticlesController < ApplicationController
    def index
      @articles = Article.all
    end
    def show
      @article = Article.find(params[:id])
    end

    def new
    end

    def create 
        # render plain: params[:article].inspect
        # The render method here is taking a very simple hash with a key of :plain 
        # and value of params[:article].inspect. The params method is the object which 
        # represents the parameters (or fields) coming in from the form. The params method 
        # returns an ActionController::Parameters object, which allows you to access the 
        # keys of the hash using either strings or symbols. In this situation, the only 
        # parameters that matter are the ones from the form.

        @article = Article.new(article_params)
 
        @article.save
        redirect_to @article
    end

    private
    def article_params
      params.require(:article).permit(:title, :text)
    end

end
