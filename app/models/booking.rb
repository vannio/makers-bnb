class Booking
  include DataMapper::Resource

  belongs_to :space

  property :id, Serial
  property :booking_date, Date
  property :booker_user_id, Integer
  property :approved, Boolean

end
