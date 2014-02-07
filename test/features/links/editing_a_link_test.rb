require "test_helper"

feature "Links edit action" do
  scenario "user editing a link" do

    sign_in

    visit edit_link_path(links(:example))

    fill_in "Title", with: "Edited Title"
    fill_in "About", with: "Edited description"
    fill_in "Visit Here!", with: "http://editedurl.com"
    click_on "Update Link"

    page.must_have_content "Edited Title"
    page.must_have_content "Edited description"
    page.must_have_content "http://editedurl.com"
  end
end
