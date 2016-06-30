feature "Booking a space" do

  before do
    user_create
    sign_in(email: "toby@example.com", password: "secret1234")
    list_space
    click_button "Sign out!"
    sign_up
    click_link "Ross's house"
  end

  scenario "clicking a space goes to 'space' page" do
    expect(current_path).to eq "/spaces/1"
    expect(page).to have_content("Pick a night")
  end

  scenario "user can request to book a space" do
    fill_in :booking_date, with: "2017-01-01"
    click_button :Submit
    expect(page).to have_content("Booking Request for 2017-01-01 sent")
  end
end
