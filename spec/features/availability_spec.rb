feature "adding availability" do
  scenario "user can state availability of spaces" do
    sign_up
    click_link "Add a new space"
    expect(page).to have_content("Availability")
  end

  scenario "user can select an available date" do
  sign_up
  click_link "Add a new space"
  fill_in :name, with: "Ross's house"
  fill_in :description, with: "has two rooms"
  fill_in :price, with: 100
  fill_in :start_date, with: "2016-01-01"
  fill_in :end_date, with: "2016-01-02"
  click_button :submit
  expect(page).to have_content("2016-01-01")


  end
end
