feature "User sign in" do

  let!(:user) do
    User.create(email: "toby@example.com",
                password: "secret1234",
                password_confirmation: "secret1234")
  end

  scenario "with correct credentials" do
    sign_in(email: "toby@example.com",   password: "secret1234")
    expect(page).to have_content "#{user.email}"
  end



end
