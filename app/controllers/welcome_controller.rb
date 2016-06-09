class WelcomeController < ApplicationController
  def index
    @articles = Article.last(5).sort_by{|s| s[:created_at]}.reverse
  end
end
