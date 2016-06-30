class BookingChecker

  def valid?(start_date, end_date, existing_booking_dates, booking_date)
    is_in_range?(start_date, end_date, booking_date) &&
    is_not_already_booked?(existing_booking_dates, booking_date)
  end

  private

  def is_in_range?(start_date, end_date, booking_date)
    (start_date < booking_date && booking_date < end_date)
  end

  def is_not_already_booked?(existing_booking_dates, booking_date)
    !existing_booking_dates.include?(booking_date)
  end

end
