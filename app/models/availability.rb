class Availability
  include DataMapper::Resource
  belongs_to :user

  property :id, Serial
  property :space_id, Serial
  property :date, Date, required: true

end 
