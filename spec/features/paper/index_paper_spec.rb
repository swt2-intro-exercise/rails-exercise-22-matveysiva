require 'rails_helper'

describe "Index paper page", type: :feature do

    it "should render withour error" do
        visit papers_path
    end

    it "should have a link to the new paper page" do
        visit papers_path
        expect(page).to have_link 'New', href: new_paper_path
    end

end