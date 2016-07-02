feature "listing current users booking requests" do
  scenario "user can view their own booking requests" do

    user = user_create
    space_1 = Space.create(
      name: "Van's House",
      description: "Has 12 Rooms",
      price: 999,
      user_id: user.id
    )

    Availability.create(
      start_date: "2016-01-01",
      end_date: "2018-01-01",
      space_id: space_1.id
    )

    space_2 = Space.create(
      name: "Toby's House",
      description: "Has 13 Rooms",
      price: 1001,
      user_id: user.id
    )

    Availability.create(
      start_date: "2016-01-01",
      end_date: "2018-01-01",
      space_id: space_2.id
    )

    User.create(
      email: "cammy@example.com",
      password: "secret1234",
      password_confirmation: "secret1234")

    sign_in(email: "cammy@example.com", password: "secret1234")

    click_link("Toby's House")
    fill_in :booking_date, with: "2017-01-01"
    click_button :Submit

    visit("/")
    click_link("Van's House")
    fill_in :booking_date, with: "2017-06-01"
    click_button :Submit

    expect(page).to have_content("Requests I've made")

      within("ul#outgoing_requests li:nth-child(2)") do
        expect(page).to have_content("Van's House")
        expect(page).to have_content("2017-06-01")
      end

      within("ul#outgoing_requests li:first-child") do
        expect(page).to have_content("Toby's House")
        expect(page).to have_content("2017-01-01")
      end
  end
end
