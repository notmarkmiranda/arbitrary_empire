require 'rails_helper'

describe PoolsController, type: :request do
  describe 'GET#new' do
    let(:league) { create(:league) }

    subject(:get_new) { get new_pool_path(league_id: league.id) }

    describe 'For a logged in user' do
      let(:user) { league.owner }

      before { sign_in(user) }

      it 'has 200 status' do
        get_new

        expect(response).to have_http_status(200)
      end
    end

    describe 'For a visitor' do
      it 'has 302 status' do
        get_new

        expect(response).to have_http_status(302)
      end
    end
  end
end
