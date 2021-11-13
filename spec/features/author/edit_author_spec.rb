require 'rails_helper'

describe "Edit author page", type: :feature do
  it "should exist at 'edit_author_path' and render withour error" do
    author = create :author
    visit edit_author_path(author.id)

  end
  it "should store changes in the database" do
    author = create :author
    visit edit_author_path(author.id)
    page.fill_in 'author[last_name]', with: 'Dijkstra'
    find('input[type="submit"]').click
    author.reload
    expect(author.last_name).to eq 'Dijkstra'
  end
end
