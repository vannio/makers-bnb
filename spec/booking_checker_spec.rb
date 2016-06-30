describe BookingChecker do

  subject(:booking_checker) { described_class.new }
  let(:start_date) { "2016-01-01" }
  let(:end_date) { "2017-01-01" }
  let(:booking_date) { "2016-01-02" }

  describe "#validate_range" do
    it "validates if the date is within the owner's specified range" do
      expect(booking_checker.validate_range(start_date, end_date, booking_date)).to be true
    end

    it "invalidates if the date is not within the owner's specified range" do
      expect(booking_checker.validate_range(start_date, end_date, "2019-01-01")).to be false
    end

  end

end
