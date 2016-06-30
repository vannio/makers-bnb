class Space
  include DataMapper::Resource
  belongs_to :user
  has n, :bookings

  has n, :availabilities

  property :id, Serial
  property :name, String, required: true
  property :description, String, length: 255
  property :price, Integer, required: true

end
