require "test_helper"

feature "Links user_links action" do
  scenario "user viewing links they created" do
    sign_in
    visit links_path

    page.must_have_content links(:example).title
    page.must_have_content links(:test).title
  end
end
