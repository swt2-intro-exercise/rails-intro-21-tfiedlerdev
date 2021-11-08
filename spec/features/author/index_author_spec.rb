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
  it "should contain a table listing all authors with options to edit and show each of them" do
    author = create :author
    visit authors_path
    expect(page).to have_text(author.name)
    expect(page).to have_text(author.homepage)

    expect(page).to have_link 'Edit', href: edit_author_path(author.id)
    expect(page).to have_link 'Show', href: show_author_path(author.id)
  end
end