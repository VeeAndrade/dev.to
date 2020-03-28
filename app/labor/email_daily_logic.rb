class EmailDailyLogic
  attr_reader :article_to_send

  def initialize(user)
    @user = user
    @article_to_send = get_article_to_send
  end

  private

  def get_article_to_send
    fresh_date = get_fresh_date

    article = if user_has_followings?
                Article.published.
                  tagged_with(get_users_tags, any: true).
                  where("published_at > ?", fresh_date).
                  where.not(user: @user).
                  order("page_views_count DESC").
                  first
              else
                Article.published.
                  where("published_at > ?", fresh_date).
                  where.not(user: @user).
                  order("page_views_count DESC").
                  first
              end
    article
  end

  def get_users_tags
    @user.cached_followed_tag_names
  end

  def get_fresh_date
    2.weeks.ago.utc
  end

  def user_has_followings?
    get_users_tags.any?
  end
end
