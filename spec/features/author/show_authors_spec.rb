require 'rails_helper'

describe "Show authors (index )page", type: :feature do
  it "should exist at authors_path and render without an error and include a table listing all authors" do
    visit authors_path
  end
  it "should contain a table listing all authors" do
    visit authors_path
    expect(page).to have_text("Name")
    expect(page).to have_text("Homepage")
    expect(page).to have_link 'New', href: new_author_path
  end
end