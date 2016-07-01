class Makersbnb < Sinatra::Base
  register Sinatra::Flash
  register Sinatra::Partial
  use Rack::MethodOverride

  enable(:sessions)
  set(:session_secret, "not_fascists")

  enable(:partial_underscores)
  set(:partial_template_engine, :erb)

  helpers do
   def current_user
     @current_user ||= User.get(session[:user_id])
   end

   def find_user(id)
     User.get(id)
   end

   def validate_date(space_id, booking_date)
     availabilities = Availability.all(space_id: space_id)
     bookings = Booking.all(space_id: space_id)

     BookingChecker.new.valid?(availabilities, bookings, booking_date)
   end
  end

end
