require 'spec_helper'

describe "PageTests" do
  it "responses" do
    combo = Factory(:combo)
    visit root_path
  end
end
