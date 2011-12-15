require 'spec_helper'

describe "Combos" do
  it "adds combo" do
    combo = Factory(:combo)
    visit new_combo_path
    fill_in :with => combo.name
    fill_in :with => combo.user
    page.should have_content "Success"
  end
end
