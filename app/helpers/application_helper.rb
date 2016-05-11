module ApplicationHelper

  def my_comment_helper(article)
    if article.comments.count === 1
      return "komentar"
    elsif article.comments.count === 2
      return "komentarja"
    elsif article.comments.count === 3 || article.comments.count === 4
      return "komentarji"
    else
      return "komentarjev"
    end
  end

  def average_rating(article)
    rating = article.ratings
    result = rating.average(:rate)
    return result.round(1)
  end

end
