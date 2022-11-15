require 'rails_helper'

describe "Paper details page", type: :feature do

paper = FactoryBot.create :paper

it "should show the authors full name" do
    visit paper_path(paper)
    expect(page).to have_text(paper.authors.name)
end

end