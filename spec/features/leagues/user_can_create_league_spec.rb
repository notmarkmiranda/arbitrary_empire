require "rails_helper"

describe "User can create league", type: :feature do
  let(:league_name) { "Super Duper" }

  before { login }

  it "creates a new league for a logged in user" do
    visit new_league_path

    fill_in "Name", with: league_name
    click_button "Create League"

    expect(page).to have_content(league_name)
  end
end
