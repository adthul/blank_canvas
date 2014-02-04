require "test_helper"

feature "Users sign in" do
  scenario "user signing in" do
    visit new_user_session_path

    fill_in "Email", with: users(:Joe).email
    fill_in "Password", with: "password"
    click_on "Sign in"
    save_and_open_page
    page.must_have_content "Signed in as: #{users(:Joe).email}"
    page.must_have_content "Signed in successfully."
  end
end
