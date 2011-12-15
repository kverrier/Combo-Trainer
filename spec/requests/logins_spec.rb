require 'spec_helper'

describe "GET 'new'" do
  describe "valid login" do
    it "should direct to user page" do
      user = Factory(:user)
      visit login_path
      fill_in "Username", :with => user.username
      fill_in "Password", :with => user.password
      click_button "Login"
      page.should have_content("Logged in")

      click_link "Logout"
      page.should have_content "Logged out"
    end

    it "blocks user trying to access without login" do

    end
  end
end
