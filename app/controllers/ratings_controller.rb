class RatingsController < ApplicationController
  before_action :find_article


  def new
    @rating = @article.ratings.new
  end

  def create
    user_rating = @article.ratings.where(user_id: current_user.id)
    @rating = @article.ratings.new(rating_params)
    @rating.user = current_user

    if user_rating.any?
      user_rating.destroy_all
    end
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
