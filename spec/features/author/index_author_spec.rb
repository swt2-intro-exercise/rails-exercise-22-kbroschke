require 'rails_helper'

describe "Index author page", type: :feature do
  it "should have correct headings and link to add authors" do
    visit authors_path

    expect(find_all("th")).to include(have_text("Name"))
    expect(find_all("th")).to include(have_text("Homepage"))
    expect(page).to have_link "New", href: new_author_path
  end
end