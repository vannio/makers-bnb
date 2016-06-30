class BookingChecker

  def validate_range(start_date, end_date, booking_date)
    (start_date < booking_date && booking_date < end_date)
  end

end
