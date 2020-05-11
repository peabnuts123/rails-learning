class CommentsController < ApplicationController
  def create
    puts "Create comment"
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    if @comment
      redirect_to article_path(@article)
    elsif
      render 'new'
    end
  end

  def destroy
    puts "Destroy comment"
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end

  private
  def comment_params
    return params.require(:comment).permit(
      :commenter,
      :body,
    )
  end
end
