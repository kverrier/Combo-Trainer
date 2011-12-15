require 'spec_helper'

describe SessionsController do
  describe "GET 'new'" do
    it "sets session user" do
      @user = Factory(:user)
      visit new_session_path
      fill_in "Username", :with => @user.username
      fill_in "Password", :with => @user.password
      current_user.should be_nil
    end
  end
end
