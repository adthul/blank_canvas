require "test_helper"

feature "folder create action" do
  scenario "user is adding an existing link to folder a named " do
    sign_in
    @user = users(:Joe)
    visit show_folder_links_path(@user.id, "this")

    select(links(:test).title)

    click_on "Add link"

    save_and_open_page
    page.must_have_content links(:test).title
  end
end
