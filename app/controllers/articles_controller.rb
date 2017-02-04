class ArticlesController < ApplicationController
	protect_from_forgery

  def index 
  	@articles = Article.all  	
  end

  def new
  	@article = Article.new
  end 

  def show
  	@articles = Article.all 	
  end

  def create
  	@article = Article.new(nombre: params[:article][:nombre], isbn: params[:article][:isbn])

  	if @article.save
      redirect_to  @article
    else
      render :new;
    end

  end

  def delete
    
  end

  def update
  end
 
end
