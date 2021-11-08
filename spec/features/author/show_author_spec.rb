require 'rails_helper'

describe "Show author page", type: :feature do
  it "should display an authors details" do
    # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
    visit author_path(@alan)
    expect(page).to have_text("Alan")
    expect(page).to have_text("Turing")
    expect(page).to have_text("http://wikipedia.de/Alan_Turing")
  end
end
