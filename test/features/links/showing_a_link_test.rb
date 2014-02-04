require "test_helper"

feature "Links show action" do
  scenario "viewing a link" do
    sign_in

    visit link_path(links(:example))

    page.must_have_content links(:example).title
    page.must_have_content links(:example).description
    page.must_have_link links(:example).url
  end
end
