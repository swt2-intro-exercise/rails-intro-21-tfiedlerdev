require 'rails_helper'

describe "Show papers (index )page", type: :feature do
  it "should only show the entries as specified by the year filter" do
    

    paper1 = Paper.create({year: 1950, venue: "HPI", title: "Hassos Paper", id:0})
    paper2 = Paper.create({year: 1968, venue: "HPI", title: "Hassos Paper", id:1})

    visit papers_path(year:"1950")

    expect(page).to have_text("1950")
    expect(page).not_to have_text("1968")
  end
end