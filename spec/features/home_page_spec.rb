require "rails_helper"

#checks to see if the home page returns projects
RSpec.feature "Visiting the homepage", type: :feature do
  scenario "The visitor should see projects" do
    visit root_path
    expect(page).to have_text("Projects")
  end
end