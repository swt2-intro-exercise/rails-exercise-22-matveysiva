require 'rails_helper'

describe "Author details page", type: :feature do
    author = FactoryBot.create :author

    it "should exist at 'author_path(@author)' and render without error" do
        visit author_path(author)
    end

    it "should display the author's first name" do
        visit author_path(author)
        expect(page).to have_text(author.first_name)
    end

    it "should display the author's last name" do
        visit author_path(author)
        expect(page).to have_text(author.last_name)
    end

    it "should display the author's homepage" do
        visit author_path(author)
        expect(page).to have_text(author.homepage)
    end
end 