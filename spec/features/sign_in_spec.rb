feature "User sign in" do
  scenario "with correct credentials" do
    user = user_create
    sign_in(email: "toby@example.com", password: "secret1234")
    expect(page).to have_content "#{user.email}"
  end
end
