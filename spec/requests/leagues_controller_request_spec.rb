require "rails_helper"

describe LeaguesController, type: :request do
  let(:user) { create(:user) }

  describe "GET#new" do
    subject(:get_new) { get new_league_path }

    describe "for logged in user" do
      before { sign_in(user) }

      it "should have 200 status" do
        get_new

        expect(response).to have_http_status(200)
      end
    end

    describe "for a visitor" do
      it "should have 302 status" do
        get_new

        expect(response).to have_http_status(302)
      end
    end
  end

  describe "POST#create" do
    let(:league_attributes) { {league: attributes_for(:league)} }

    subject(:post_create) { post leagues_path, params: league_attributes }

    describe "for a logged in user" do
      before { sign_in(user) }

      it "should change league count and redirect" do
        expect {
          post_create
        }.to change(League, :count).by(1)
          .and change(Membership, :count).by(1)

        expect(response).to have_http_status(302)
      end
    end

    describe "for a visitor" do
      it "should not change league count and should redirect" do
        expect {
          post_create
        }.not_to change(League, :count)

        expect(response).to have_http_status(302)
      end
    end
  end
end
