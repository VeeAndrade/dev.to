class EmailDaily
  def self.send_daily_dev_email(users = [])
    new(users).send_daily_dev_email
  end

  def initialize(users = [])
    @users = users.empty? ? get_users : users
  end

  def send_daily_dev_email
    @users.find_each do |user|
      article = EmailDailyLogic.new(user).article_to_send
      begin
        DailyMailer.daily_email(user, article).deliver if user.email_daily_dev == true
      rescue StandardError => e
        Rails.logger.error("Email issue: #{e}")
      end
    end
  end

  private

  def get_users
    User.where(email_daily_dev: true).where.not(email: "")
  end
end
