require 'rails_helper'

describe Pool, type: :model do
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :bet_cut_off_time }
    it { should validate_presence_of :end_time }
  end

  describe 'relationships' do
    it { should belong_to :league }
  end

  describe 'methods'
end
