require "test_helper"

feature "Users sign in" do
  scenario "user signing in" do
    sign_in

    page.must_have_content "Signed in as: #{users(:Joe).email}"
    page.must_have_content "Signed in successfully."
  end
end
