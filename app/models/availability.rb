class Availability
  include DataMapper::Resource
  belongs_to :space

  property :id, Serial
  property :start_date, Date, required: true
  property :end_date, Date, required: true
end
