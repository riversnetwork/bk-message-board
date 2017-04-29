require 'rails_helper'

feature "User logs in to the site" do
  
  let(:user) {FactoryGirl.create(:user)}
  
  scenario "successfully" do
    visit root_path
    click_link "Log In"
    fill_in "user[email]", with: user.email
    fill_in "user[password]", with: user.password
    click_button "Log in"
    expect(page).to have_content("Signed in successfully")
  end
end