require 'rails_helper'

RSpec.describe Author, type: :model do

  before(:all) do
    @turing = create(:author)
  end

  it "should return concatenation of first and last name when invoking 'name'" do
    expect(@turing.name).to eq("Alan Turing")
  end

  it "should be valid with valid attributes" do
    expect(@turing).to be_valid
  end

  it "should not be valid without last name" do
    @alan = build(:author, last_name: "")
    expect(@alan).not_to be_valid
  end

  it "should not be valid with empty last name" do
    @alan2 = build(:author, last_name: "")
    expect(@alan2).not_to be_valid
  end
end
