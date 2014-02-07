require "test_helper"

feature "Links delete action" do
  scenario "user deleting their link" do
    sign_in
    @user = users(:Joe)
    link = @user.links.create!(title: "Destroy me", url: "http://destroyme.com", description: "to be destroyed")
    visit links_path

    page.find("a[href='/links/#{link.id}'][data-method='delete']").click

    page.must_have_content "Link was successfully deleted."
    page.wont_have_content "Delete me"
  end
end
