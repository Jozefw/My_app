class ArticlesController < ApplicationController

def index
  @articles = Article.all
end

def new
  @article = Article.new
end

def create
  @article = Article.new(my_params)
  if @article.save
    redirect_to root_path
  else
    render :new
  end
end

def edit
  @article = Article.find(params[:id])
end

def update
  @article = Article.find(params[:id])
  @article.update(my_params)
  redirect_to root_path
end

def destroy
  @article =Article.find(params[:id])
  @article.destroy
  redirect_to root_path
  
end





private 
def my_params
params.require(:article).permit(:title,:coment)
end


end
