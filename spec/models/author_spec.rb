require 'rails_helper'

RSpec.describe Author, type: :model do
  it "should return concatenation of first and last name when invoking 'name'" do
    author = Author.new(first_name: "Alan", last_name: "Turing")
    expect(author.name).to eq("Alan Turing")
  end
end
