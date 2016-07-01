feature "Booking Approvals" do
  scenario "user can approve booking requests" do
    user = user_create

    space = Space.create(
      name: "Toby's House",
      description: "Has 13 Rooms",
      price: 1001,
      user_id: user.id
    )

    Availability.create(
      start_date: "2016-01-01",
      end_date: "2018-01-01",
      space_id: space.id
    )

    User.create(
      email: "cammy@example.com",
      password: "secret1234",
      password_confirmation: "secret1234")
      
    sign_in(email: "cammy@example.com", password: "secret1234")

    click_link("Toby's House")
    fill_in :booking_date, with: "2017-01-01"
    click_button :Submit

    click_button "Sign out!"
    sign_in(email: "toby@example.com", password: "secret1234")
    click_link "My Bookings"
    within("ul#incoming_requests li:nth-child(1)") do
      click_button "Approve"
    end
    expect(Booking.first.approved).to eq(true)
  end
end
