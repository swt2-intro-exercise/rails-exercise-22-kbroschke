require 'rails_helper'

describe "Show author page", type: :feature do

  before(:all) do
    @alan = create(:author)
  end

  it "should have a link back to authors index" do
    # this test/feature was not required by the exercise but it was included in https://guides.rubyonrails.org/v6.0/getting_started.html#adding-links
    visit author_path(@alan)
    expect(page).to have_link(href: authors_path)
  end

  it "should have a link to edit the shown author" do
    # this test/feature was not required by the exercise but it was included in https://guides.rubyonrails.org/v6.0/getting_started.html#updating-articles
    visit author_path(@alan)
    expect(page).to have_link(href: edit_author_path(@alan))
  end

  it "should show authors details page without errors" do
    visit author_path(@alan)

    expect(page).to have_text("Name: Alan Turing")
    expect(page).to have_text("http://wikipedia.de/Alan_Turing")
  end
end