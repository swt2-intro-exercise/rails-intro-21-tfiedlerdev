require 'rails_helper'

describe "Show author page", type: :feature do
  it "should display an authors details (should exist at 'author_path(:id)' and render without an error)" do
    # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
    author = create :author
    visit author_path(author.id)
    expect(page).to have_text("Alan")
    expect(page).to have_text("Turing")
    expect(page).to have_text("http://wikipedia.de/Alan_Turing")
  end
end
