require 'rails_helper'

RSpec.describe Paper, type: :model do
  it "should not validate without all attributes" do
    author1 = Paper.new({year: 0})
    expect(author1).to_not be_valid
    author2 = Paper.new({title: "Hallo"})
    expect(author2).to_not be_valid
    author3 = Paper.new({venue: "Test"})
    expect(author3).to_not be_valid
  end
  it "should not validate with attributes of wrong type" do
    author = Paper.new({year: "Hallo", venue: "HPI", title: "Hassos Paper"})
    expect(author).to_not be_valid
   
  end
end
