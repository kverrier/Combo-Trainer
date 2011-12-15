require 'spec_helper'

describe "user sign up" do
  it "should create user" do
    user = Factory(:user)
    visit signup_path
    fill_in "Username", :with => user.username
    fill_in "Password", :with => user.password
    fill_in "Confirm Password", :with => user.password
    click_button "Signup"
    page.should have_content("Successly created combo")
  end

end
