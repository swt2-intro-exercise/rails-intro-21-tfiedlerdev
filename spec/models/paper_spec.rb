require 'rails_helper'

RSpec.describe Paper, type: :model do
  it "should not validate without all attributes" do
    paper1 = Paper.new({year: 0})
    expect(paper1).to_not be_valid
    paper2 = Paper.new({title: "Hallo"})
    expect(paper2).to_not be_valid
    paper3 = Paper.new({venue: "Test"})
    expect(paper3).to_not be_valid
  end
  it "should not validate with attributes of wrong type" do
    paper = Paper.new({year: "Hallo", venue: "HPI", title: "Hassos Paper"})
    expect(paper).to_not be_valid
  end
  it "should have a list of authors" do
    paper = Paper.new({year: "Hallo", venue: "HPI", title: "Hassos Paper"})
    expect(paper).to include(:authors)
  end
end
