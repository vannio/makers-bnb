class Makersbnb < Sinatra::Base
  post "/bookings" do

    Booking.create(
      booking_date: params[:booking_date],
      booker_user_id: current_user.id,
      approved: false,
      space_id: params[:space_id]
    )

    flash.next[:notice] = "Booking Request for #{params[:booking_date]} sent"

    redirect("/bookings")

  end

  get "/bookings" do
    @bookings = Booking.all(booker_user_id: current_user.id)
    erb(:"bookings/index")
  end

  post "/bookings/approval" do
    booking = Booking.get(params[:booking_id])
    booking.approved = true
    booking.save
  end

end
