require 'rails_helper'

describe "Edit author page", type: :feature do
    author = FactoryBot.create :author

    it "should exist at 'edit_author_path' and render without error" do
        visit edit_author_path(author)
    end

    it "should have text inputs for an author's first name, last name, and homepage" do
        visit edit_author_path(author)
        expect(page).to have_field('author[first_name]')
        expect(page).to have_field('author[last_name]')
        expect(page).to have_field('author[homepage]')
    end

    it "should update the author after submitting the form" do
        visit edit_author_path(author)
        page.fill_in 'author[first_name]', with: 'Ellen'
        find('input[type="submit"]').click
        
        author.reload  
        expect(author.first_name).to eq('Ellen')
    end
end