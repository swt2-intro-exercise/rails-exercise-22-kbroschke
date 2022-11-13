require 'rails_helper'

describe "Index paper page", type: :feature do

  before(:all) do
    @paper = create(:paper)
  end

  it "should have link to edit a paper" do
    visit papers_path

    expect(page).to have_link(href: edit_paper_path(@paper))
  end

  it "should have link to delete a paper" do
    visit papers_path

    expect(page).to have_css("a[data-turbo-method='delete'][href='#{paper_path(@paper)}']")
  end

  it "should be able to be filtered by year parameter" do
    @new_paper = create(:new_paper)

    visit("#{papers_path}?year=1950")

    expect(page).not_to have_text(@new_paper.title)
  end
end