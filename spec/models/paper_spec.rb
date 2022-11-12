require 'rails_helper'

RSpec.describe Paper, type: :model do

  it "should be valid with valid attributes" do
    @paper = create(:paper)

    expect(@paper).to be_valid
  end

  it "should not be valid without title" do
    @title_paper = build(:paper, title: "")

    expect(@title_paper).not_to be_valid
  end

  it "should not be valid without venue" do
    @venue_paper = build(:paper, venue: "")

    expect(@venue_paper).not_to be_valid
  end

  it "should not be valid without year" do
    @year_paper = build(:paper, year: "")

    expect(@year_paper).not_to be_valid
  end

  it "should not be valid with string as year" do
    @year_string_paper = build(:paper, year: "ABCD")

    expect(@year_string_paper).not_to be_valid
  end

  it "should have a empty list of authors" do
    @authorless_paper = create(:authorless_paper)

    expect(@authorless_paper.authors).to eq([])
  end
end