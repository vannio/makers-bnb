feature "listing spaces" do
  scenario "user can list spaces" do
    sign_up
    list_space
    expect(page).to have_content("Ross's house has two rooms")
  end
end
