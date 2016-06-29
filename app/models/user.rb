require "bcrypt"

class User
  include DataMapper::Resource

  attr_writer :password_confirmation

  validates_confirmation_of :password

  has n, :spaces
  property :id, Serial
  property :email, String, required: true, unique: true, format: :email_address
  property :password_digest, String, length: 60, required: true

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def self.authenticate(email, password)
    user = first(email: email)
    user if user && BCrypt::Password.new(user.password_digest) == password
  end

  private

  attr_reader :password, :password_confirmation

end
