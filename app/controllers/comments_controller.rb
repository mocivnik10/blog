class CommentsController < ApplicationController
  def index
    @article = Article.find(params[:article_id])
    @comments = @article.comments
  end

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.build(comment_params)
    @comment.user = current_user
    if @comment.save
      redirect_to article_path(@article)
    else
      render 'new'
    end
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = Comment.find(params[:id])
    if @comment.destroy
      redirect_to article_path(@article), flash: {notice: "Komentar je bil uspešno izbrisan!"}
    else
      redirect_to article_path(@article), flash: {notice: "Komentarja ni bilo mogoče izbrisati!"}
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
