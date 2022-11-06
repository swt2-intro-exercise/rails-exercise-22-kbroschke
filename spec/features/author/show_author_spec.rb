require 'rails_helper'

describe "Show author page", type: :feature do

  before(:all) do
    @alan = create(:author)
  end

  it "should show authors details page without errors" do
    visit author_path(@alan)

    expect(page).to have_text("Name: Alan Turing")
    expect(page).to have_text("http://wikipedia.de/Alan_Turing")
  end
end