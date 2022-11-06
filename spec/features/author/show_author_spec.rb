require 'rails_helper'

describe "Show author page", type: :feature do

  before(:all) do
    @alan = create(:author)
  end

  it "should show authors details page without errors" do
    visit author_path(@alan)

    expect(page).to have_text("")
  end
end