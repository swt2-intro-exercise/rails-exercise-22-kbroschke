require 'rails_helper'

describe "Show paper page", type: :feature do

  before(:all) do
    @paper = create(:paper)
    @author = create(:author)
  end

  it "should show the full name of its authors on details page" do
    visit paper_path(@paper)

    expect(page).to have_text(@author.name)
  end
end