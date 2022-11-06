require 'rails_helper'

describe "New author page", type: :feature do

  it "should exist at 'new_author_path' and render withour error" do
    # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
    visit new_author_path
  end

  it "should have a link back to authors index" do
    # this test/feature was not required by the exercise but it was included in https://guides.rubyonrails.org/v6.0/getting_started.html#adding-links
    visit new_author_path
    expect(page).to have_link(href: authors_path)
  end

  it "should have text input for first name, last name, and homepage" do
    visit new_author_path
    # these are the standard names given to inputs by the Rails form builder
    expect(page).to have_field('author[first_name]')
    expect(page).to have_field('author[last_name]')
    expect(page).to have_field('author[homepage]')
  end

  it "should save a new author in the database" do
    before_count = Author.count

    visit new_author_path

    page.fill_in "author[first_name]", with: "Alan"
    page.fill_in "author[last_name]", with: "Turing"
    page.fill_in "author[homepage]", with: "http://wikipedia.org/Alan_Turing"

    find('input[type="submit"]').click

    expect(Author.count).to eq(before_count + 1)
  end

  it "should show error when new user cannot be validated" do
    visit new_author_path

    page.fill_in "author[first_name]", with: "Alan"

    find('input[type="submit"]').click

    expect(page).to have_content("error")
  end
end
