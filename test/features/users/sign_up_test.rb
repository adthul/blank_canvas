require "test_helper"

feature "Users sign up" do
  scenario "site visitor signing up for account" do
    visit root_path

    click_on "Sign Up"

    fill_in "Email", with: "test@example.com"
    fill_in "Password", with: "password"

    click_on "Sign up"

    page.must_have_content "Welcome! You have signed up successfully."
    page.must_have_content "You are signed in as test@example.com"
  end
end
