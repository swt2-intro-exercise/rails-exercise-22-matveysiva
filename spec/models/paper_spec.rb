require 'rails_helper'

RSpec.describe Paper, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  it "should validate with all attributes" do 
    paper = Paper.new(title: "COMPUTING MACHINERY AND INTELLIGENCE", venue: "Mind 49: 433-460", year: 1950)
    expect(paper).to be_valid
  end 

  it "should not validate without title" do 
    paper = Paper.new(venue: "Mind 49: 433-460", year: 1950)
    expect(paper).to_not be_valid
  end

  it "should not validate without venue" do 
    paper = Paper.new(title: "COMPUTING MACHINERY AND INTELLIGENCE", year: 1950)
    expect(paper).to_not be_valid
  end

  it "should not validate without year" do 
    paper = Paper.new(title: "COMPUTING MACHINERY AND INTELLIGENCE", venue: "Mind 49: 433-460")
    expect(paper).to_not be_valid
  end

  it "should not validate with non-integer year" do 
    paper = Paper.new(title: "COMPUTING MACHINERY AND INTELLIGENCE", venue: "Mind 49: 433-460", year: "nineteen fifty")
    expect(paper).to_not be_valid
  end
end
