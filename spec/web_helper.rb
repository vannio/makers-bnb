def sign_up(
  email: "cameron@cam.com",
  password: "cameron",
  password_confirmation: "cameron"
)
  visit "/users/new"
  fill_in :email, with: email
  fill_in :password, with: password
  fill_in :password_confirmation, with: password_confirmation
  click_button "Submit"
end

def sign_in(email:, password:)
  visit "/sessions/new"
  fill_in :email, with: email
  fill_in :password, with: password
  click_button "Submit"
end

def list_space
  click_link "Add a new space"
  fill_in :name, with: "Ross's house"
  fill_in :description, with: "has two rooms"
  fill_in :price, with: 100
  click_button :submit
end

def user_create
  User.create(email: "toby@example.com",
              password: "secret1234",
              password_confirmation: "secret1234")
end
