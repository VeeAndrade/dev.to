require "rails_helper"

RSpec.describe EmailDailyLogic, type: :labor do
  let(:user) { create(:user) }
  let(:tag1) { create(:tag, name: "java") }
  let(:tag2) { create(:tag, name: "ruby") }

  describe "#article_to_send" do
    context "when user follows no tags" do
      it "provides a top article published in last 14 days" do
        create(:article, published_at: 3.weeks.ago.utc, page_views_count: 8)
        create(:article, published_at: 3.days.ago.utc, page_views_count: 2)
        article3 = create(:article, published_at: 10.days.ago.utc, page_views_count: 5)
        h = described_class.new(user)

        expect(h.article_to_send.id).to eq(article3.id)
      end
    end

    context "when user follows at least one tag" do
      before { [user.follow(tag1), user.follow(tag2)] }

      it "provides a top article published in last 14 days that matches one of the user's tags" do
        create(:article, tags: tag1, published_at: 3.weeks.ago.utc, page_views_count: 5)
        create(:article, tags: tag2, published_at: 3.days.ago.utc, page_views_count: 2)
        article3 = create(:article, tags: tag1, published_at: 10.days.ago.utc, page_views_count: 4)
        h = described_class.new(user)

        expect(h.article_to_send.id).to eq(article3.id)
      end
    end
  end
end
