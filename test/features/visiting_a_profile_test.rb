require "test_helper"

feature "Visiting a profile" do
  scenario "view current user profile when 'Profile' link is clicked" do
    sign_in

    click_on "Profile"
    page.must_have_content users(:Joe).user_name
    page.must_have_content users(:Joe).email
  end
end
