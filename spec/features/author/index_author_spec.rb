require 'rails_helper'

describe "Index author page", type: :feature do

  before(:all) do
    @author = create(:author)
  end

  it "should have correct headings" do
    visit authors_path

    expect(find_all("th")).to include(have_text("Name"))
    expect(find_all("th")).to include(have_text("Homepage"))
  end

  it "should have link to add a new author" do
    visit authors_path

    expect(page).to have_link "New", href: new_author_path
  end

  it "should have link to show details about an author" do
    visit authors_path

    expect(find_all("tr")).to include(
      have_link(href: author_path(@author)))
  end

  it "should have link to edit an author" do
    visit authors_path

    expect(find_all("tr")).to include(
      have_link(href: edit_author_path(@author)))
  end
end