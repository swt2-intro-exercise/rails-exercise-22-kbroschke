require 'rails_helper'

describe "Index page", :type => :feature do
  
  it "should display 'Paper Management System'" do
    visit root_path
    expect(page).to have_text("Paper Management System")
  end

  it "should link to author list" do
    # this test/feature was not required by the exercise but it was included in https://guides.rubyonrails.org/v6.0/getting_started.html#adding-links
    visit root_path
    expect(page).to have_link(href: authors_path)
  end

  it "should link to paper list" do
    # this test/feature was not required by the exercise but I want to have a link to click on
    visit root_path
    expect(page).to have_link(href: papers_path)
  end
end