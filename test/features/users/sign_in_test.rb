require "test_helper"

feature "Users sign in" do
  scenario "user signing in" do
    visit sign_in_path

    fill_in "Email", "test@example.com"
    fill_in "Password", "password"

    click_on "Sign in"

    page.must_have_content "You are signed in as test@example.com"
    page.must_have_content "Signed in successfully."
  end
end
