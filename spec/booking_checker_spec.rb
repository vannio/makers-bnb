describe BookingChecker do

  subject(:booking_checker) { described_class.new }
  let(:start_date) { "2016-01-01" }
  let(:end_date) { "2017-01-01" }
  let(:booking_date) { "2016-01-02" }
  let(:existing_booking_dates) { ["2016-04-17", "2016-04-18", "2016-04-20"] }

  describe "#is_in_range?" do
    it "validates if the date is within the owner's specified range" do
      expect(booking_checker.is_in_range?(start_date, end_date, booking_date)).to be true
    end

    it "invalidates if the date is not within the owner's specified range" do
      expect(booking_checker.is_in_range?(start_date, end_date, "2019-01-01")).to be false
    end

  end

  describe "#is_not_already_booked?" do
    it "checks that the date has not already been booked by another user" do
      expect(booking_checker.is_not_already_booked?(existing_booking_dates, booking_date)).to be true
    end

    it "checks that the date has already been booked by another user" do
      expect(booking_checker.is_not_already_booked?(existing_booking_dates, "2016-04-17")).to be false
    end

  end

end
