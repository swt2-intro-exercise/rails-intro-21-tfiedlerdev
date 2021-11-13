require 'rails_helper'

describe "Edit paper page", type: :feature do
  it "should have a multiple select box where one can assosiate authors with the paper" do
    paper = create :paper
    visit edit_paper_path(paper.id)
    
    expect(page).to have_select(multiple: true)

  end
end
