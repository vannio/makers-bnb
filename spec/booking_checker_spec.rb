describe BookingChecker do

  subject(:booking_checker) { described_class.new }
  let(:start_date) { "2016-01-01" }
  let(:end_date) { "2017-01-01" }
  let(:booking_date) { "2016-01-02" }
  let(:existing_booking_dates) { ["2016-04-17", "2016-04-18", "2016-04-20"] }

  describe "#valid?" do
    it "returns true with a valid booking date" do
      expect(booking_checker.valid?(start_date, end_date, existing_booking_dates, booking_date)).to be true
    end

    it "returns false with an invalid booking date" do
      expect(booking_checker.valid?(start_date, end_date, existing_booking_dates, "2019-01-01")).to be false
    end

    it "returns false with an invalid booking date" do
      expect(booking_checker.valid?(start_date, end_date, existing_booking_dates, "2016-04-17")).to be false
    end

  end

end
