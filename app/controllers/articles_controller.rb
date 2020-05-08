class ArticlesController < ApplicationController
  def index
    puts "Index article"
    @articles = Article.all
  end

  def show
    puts "Show article"
    @article = Article.find(params[:id])
  end

  def new
    puts "New article"
    @article = Article.new
  end

  def create
    puts "Create article"
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    elsif
      render 'new'
    end
  end

  def edit
    puts "Edit article"
    @article = Article.find(params[:id])
  end


  def update
    puts "Update article"
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    puts "Destroy article"
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  private
  def article_params
    return params.require(:article).permit(
      :title,
      :text,
    )
  end
end
