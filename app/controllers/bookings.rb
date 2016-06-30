class Makersbnb < Sinatra::Base
  post "/bookings" do

    booking = Booking.create(
      booking_date: params[:booking_date],
      booker_user_id: current_user.id,
      approved: false,
      space_id: params[:space_id]
    )

    flash.next[:notice] = "Booking Request for #{params[:booking_date]}"

    redirect("/bookings")

  end

  get "/bookings" do
    erb(:"bookings/index")
  end

end
