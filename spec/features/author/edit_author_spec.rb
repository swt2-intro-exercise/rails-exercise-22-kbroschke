require 'rails_helper'

describe "Edit author page", type: :feature do

  before(:all) do
    @alan = create(:author)
  end

  it "should have a link back to authors index" do
    # this test/feature was not required by the exercise but it was included in https://guides.rubyonrails.org/v6.0/getting_started.html#adding-links
    visit edit_author_path(@alan)
    expect(page).to have_link(href: authors_path)
  end

  it "should show author's edit page without errors" do
    visit edit_author_path(@alan)

    expect(page).to have_text("Edit Author")
  end

  it "should save changes" do
    visit edit_author_path(@alan)

    test_name = "Elon"
    page.fill_in "author[first_name]", with: test_name
    find('input[type="submit"]').click

    @alan.reload
    expect(@alan.first_name).to eq test_name
  end
end