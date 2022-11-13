require 'rails_helper'

describe "New/Edit paper page form", type: :feature do

  before(:all) do
    @paper = create(:paper)
    @author = create(:author)
  end

  it "should show the name of its author as option in select element" do
    visit edit_paper_path(@paper)

    expect(page).to have_select(with_options: [@author.name])
  end
end