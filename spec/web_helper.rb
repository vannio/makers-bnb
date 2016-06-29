def sign_up(email: "cameron@cam.com",
            password: "cameron",
            password_confirmation: "cameron")
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
