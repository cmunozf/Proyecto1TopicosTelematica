class ArticlesController < ApplicationController

  def index 
  	@articles = Article.all  	
  end

  def new
  	@article = Article.new
  end 

  def create
  	@article = Article.new(nombre: params[:article][:nombre], isbn: params[:article][:isbn])

  	if @article.save
      redirect_to  "/articles"
    else
      render :new;
    end

  end

  def show
    @article = Article.find(params[:id]) 
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to "/articles"
  end


 
end
