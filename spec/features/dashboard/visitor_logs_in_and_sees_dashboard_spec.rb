require "rails_helper"

describe "Visitor logs in and sees dashboard", type: :feature do
  let(:user) { create(:user) }

  it "shows the dashboard" do
    visit new_user_session_path

    fill_in "Email", with: user.email
    fill_in "Password", with: "password"
    click_button "Log in"

    expect(page).to have_content(user.email)
  end
end
