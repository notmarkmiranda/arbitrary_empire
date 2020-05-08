require 'rails_helper'

describe 'Admin can create new pool', type: :feature do
  let(:pool_name) { "Super Duper Pool" }
  let(:league) { create(:league) }
  let(:user) { league.owner }

  before { login(user) }

  it 'creates a new pool' do
    visit league_path(league)

    click_link ("Create New Pool")
    fill_in "Pool Name", with: pool_name 
    fill_in "Bet cut off time", with: DateTime.new(2020, 12, 31, 8, 00, 00) 
    fill_in "End time", with: DateTime.new(2021, 12, 31, 8, 00, 00) 
    click_button "Create Pool"
    
    expect(page).to have_content(pool_name)
  end
end
