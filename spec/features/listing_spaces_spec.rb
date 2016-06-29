feature "listing spaces" do
  scenario "user can list spaces" do
    sign_up
    click_link "Add a new space"
    fill_in :name, with: "Ross's house"
    fill_in :description, with: "has two rooms"
    fill_in :price, with: 100
    click_button :submit
    expect(page).to have_content("Ross's house has two rooms")
  end
end
