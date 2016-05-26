class SubscribeMailer < ApplicationMailer

  def new_subscribe_mail(article_params)
    @article = article_params
    #@users = User.all
    #@user_emails = @users.collect(&:email).join(",")

    #mail(to: @user_emails, subject: "Sportni Blog: #{@article.title}")
    mail(to: "mocivnik10@gmail.com", subject: "Sportni Blog: #{@article.title}")
  end

end
