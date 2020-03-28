require "rails_helper"

class FakeDelegator < ActionMailer::MessageDelivery
  def deliver(*args)
    super
  end
end

RSpec.describe EmailDaily, type: :labor do
  let(:user) { create(:user, email_daily_dev: true) }
  let(:tag) { create(:tag, name: "java") }
  let(:mock_delegator) { instance_double("FakeDelegator") }

  before do
    allow(DailyMailer).to receive(:daily_email) { mock_delegator }
    allow(mock_delegator).to receive(:deliver).and_return(true)
    user
  end

  describe "::send_daily_email" do
    context "when a user follows a tag" do
      before { user.follow(tag) }

      it "sends a daily email containing an article that has the same tag" do
        article = create(:article, page_views_count: 1, tags: tag)
        described_class.send_daily_dev_email
        expect(DailyMailer).to have_received(:daily_email).with(user, article)
      end
    end
  end
end
