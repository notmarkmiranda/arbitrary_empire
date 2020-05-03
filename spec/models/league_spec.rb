require "rails_helper"

describe League, type: :model do
  describe "relationships" do
    it { should belong_to :owner }
    it { should have_many :memberships }
  end

  describe "validations" do
    before { create(:league) }

    it { should validate_uniqueness_of :name }
  end

  describe "methods"
end
