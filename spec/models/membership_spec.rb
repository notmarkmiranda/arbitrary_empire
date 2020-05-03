require 'rails_helper'

describe Membership, type: :model do
  describe 'validations' do
    before { create(:membership) }
    it { should validate_uniqueness_of(:league_id).scoped_to(:user_id) }
  end

  describe 'relationships' do
    it { should belong_to(:league) }
    it { should belong_to(:user) }
  end

  describe 'models'
end
