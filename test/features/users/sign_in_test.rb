require "test_helper"

feature "Users sign in" do
  scenario "user signing in" do
    sign_in

    page.must_have_content "Signed in as: #{users(:Joe).user_name}"
    page.must_have_content "Signed in successfully."
  end
end
