require "rails_helper"

describe DashboardController, type: :request do
  describe "GET#show" do
    let(:user) { create(:user) }

    subject(:get_show) { get dashboard_path }

    describe "for a logged in user" do
      before { sign_in(user) }

      it "has 200 status" do
        get_show

        expect(response).to have_http_status(200)
      end
    end

    describe "for a visitor" do
      it "has 302 status" do
        get_show

        expect(response).to have_http_status(302)
      end
    end
  end
end
