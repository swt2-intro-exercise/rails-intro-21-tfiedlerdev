require 'rails_helper'

RSpec.describe Author, type: :model do
  it "should have the same attributes as given via initialisation" do
    author = Author.new({first_name: "Alan", last_name: "Touring", homepage:"http://wikipedia.org/Alan_Turing"})
    expect(author.first_name).to eq "Alan"
    expect(author.last_name).to eq "Touring"
    expect(author.homepage).to eq "http://wikipedia.org/Alan_Turing"
    expect(author.name).to eq "Alan Touring"
    end
end
