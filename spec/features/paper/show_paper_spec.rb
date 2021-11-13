require 'rails_helper'

describe "Show paper page", type: :feature do
  it "should display all associated authors" do
    #paper = create :paper
    #paper = Paper.new({year: "Hallo", venue: "HPI", title: "Hassos Paper", id:0})
    paper = create :paper
    author = create :author
    paper.authors<< author
    visit paper_path(paper.id)
    expect(page).to have_text("Alan Turing")
  end
end