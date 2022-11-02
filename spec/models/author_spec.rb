require 'rails_helper'

RSpec.describe Author, type: :model do
  before(:each) do
    @first_name = "Alan"
    @last_name = "Turing"
    @homepage = "http://wikipedia.org/Alan_Turing"
    @author = Author.new(
      first_name: @first_name,
      last_name: @last_name,
      homepage: @homepage)
  end
  it "should have all attributes set" do
    expect(@author.first_name).to eq(@first_name)
    expect(@author.last_name).to eq(@last_name)
    expect(@author.homepage).to eq(@homepage)
  end
  it "should concat first and last name to full name" do
    expect(@author.name).to eq(@first_name + " " + @last_name)
  end
end
