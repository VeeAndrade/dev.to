# Preview all emails at http://localhost:3000/rails/mailers/daily_mailer
class DailyMailerPreview < ActionMailer::Preview
  def daily_email
    DailyMailer.daily_email(User.last, Article.all)
  end
end
