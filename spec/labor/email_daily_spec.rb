require "rails_helper"

class FakeDelegator < ActionMailer::MessageDelivery
  def deliver(*args)
    super
  end
end

RSpec.describe EmailDaily, type: :labor do
  let(:user) { create(:user, email_daily_dev: true) }
  let(:author) { create(:user) }
  let(:mock_delegator) { instance_double("FakeDelegator") }

  before do
    allow(DailyMailer).to receive(:daily_email) { mock_delegator }
    allow(mock_delegator).to receive(:deliver).and_return(true)
    user
  end

  describe "::send_daily_email" do
    context "when there's article to be sent" do
      before { user.follow(author) }

      it "send daily email when there's at least 3 hot articles" do
        create_list(:article, 3, user_id: author.id, positive_reactions_count: 20, score: 20)
        described_class.send_daily_dev_email
        expect(DailyMailer).to have_received(:daily_email).with(user, instance_of(Article))
      end
    end
  end
end
