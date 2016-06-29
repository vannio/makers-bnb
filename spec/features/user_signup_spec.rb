feature "user sign up" do
  scenario "I can sign up as a new user" do
    sign_up
    expect(User.first.email).to eq ("cameron@cam.com")
  end

  scenario "Requires a matching confirmation password" do
    expect{sign_up(password_confirmation: "dickbraeth")}.not_to change(User, :count)
  end
end
