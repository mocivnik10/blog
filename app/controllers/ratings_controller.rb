class RatingsController < ApplicationController
  before_action :find_article


  def new
    @rating = @article.ratings.new
  end

  def create
    @rating = @article.ratings.new(rating_params)
    @rating.user = current_user
    if @rating.save
      redirect_to @article, flash: {notice: "Vaša ocena: #{@rating.rate} je sprejeta!"}
    else
      render 'new'
    end
  end

private
  def find_article
    @article = Article.friendly.find(params[:article_id])
  end

  def rating_params
    params.require(:rating).permit(:rate)
  end
end
