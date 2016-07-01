# describe BookingChecker do
#   subject(:booking_checker) { described_class.new }
#
#   describe "#valid?" do
#     let(:availablity) { double(:availablity) }
#     let(:availabilities) { [double(:availablity)] }
#
#     let(:booking) { double(:booking) }
#     let(:bookings) { [double(:booking)] }
#
#     let(:booking_date) { "2016-01-04" }
#
#     it "validates a booking" do
#       allow(:availability).to receive(:start_date).and_return("2016-01-01")
#       allow(:availability).to receive(:end_date).and_return("2016-01-07")
#
#       allow(:booking).to receive(:booking_date).and_return("2017-01-01")
#
#       expect(booking_checker.valid?(availabilities, bookings, booking_date)).to be true
#     end
#   end
# end
