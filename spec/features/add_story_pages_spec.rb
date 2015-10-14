require 'rails_helper'

describe "the path for a story" do
  it  "adds a story to all stories" do
    visit new_story_path
    fill_in 'Title', :with => 'Horse'
    fill_in 'Author', :with => 'K'
    fill_in 'Image', :with => 'test.com'
    click_on 'Create Story'
    expect(page).to have_content 'Horse'
  end
  it "routes to a single story page" do
    test_story = Story.new(title: "Horse on a Swing", author: "KA", image: "test.com")
    test_story.save
    visit stories_path
    click_on "Horse on a Swing"
    expect(page).to have_content(test_story.title)
  end
end
