require "test_helper"

feature "Creating a link" do
  scenario "logged in user creates a link" do
    sign_in

    visit new_link_path

    fill_in "Title", with: "Test link"
    fill_in "Description", with: "This is a test link made for testing."
    fill_in "Url", with: "http://example.com"
    click_on "Create Link"

    page.must_have_content "Link was successfully created."
  end
end
