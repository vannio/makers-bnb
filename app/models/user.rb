require 'bcrypt'

class User
  
  include DataMapper::Resource
  has n, :spaces
  property :id, Serial
  property :email, String, required: true, unique: true, format: :email_address
  property :password_digest, String, length: 60, required: true

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

end
