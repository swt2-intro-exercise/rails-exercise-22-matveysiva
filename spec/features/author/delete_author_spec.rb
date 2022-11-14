require 'rails_helper'

describe "Delete author page", type: :feature do
    author = FactoryBot.create :author

    it "should exist a delete button at 'author_path'" do
        visit author_path(author)
        expect(page).to have_link('Delete')
    end

    it "should delete an author" do
        visit author_path(author)

        count = Author.count
        click_link('Delete')
        Author.count.should == count - 1
    end
end