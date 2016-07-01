class BookingChecker

  def valid?(availabilities, bookings, booking_date)
    is_in_availabilities?(availabilities, booking_date) &&
    !is_already_booked?(bookings, booking_date)
  end

  private

  def is_in_range?(start_date, end_date, booking_date)
    booking_date = Date.parse(booking_date)
    (start_date < booking_date && booking_date < end_date)
  end

  def is_already_booked?(bookings, booking_date)
    bookings.any? do |booking|
      booking.booking_date == booking_date && booking.approved
    end
  end

  def is_in_availabilities?(availabilities, booking_date)
    availabilities.any? do |availablity|
      is_in_range?(availablity.start_date, availablity.end_date, booking_date)
    end
  end

end
