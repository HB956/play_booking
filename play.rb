class Play
    attr_reader :play_name, :max_seats, :seats_booked, :bookings, :person, :seats, :id
    
    def initialize(play_name, max_seats)
        @play_name = play_name
        @max_seats = max_seats
        @seats_booked = 0
        @bookings = []
    end
    
    def add_booking(person, seats)
        @bookings << Booking.new(person, seats)
        @seats_booked += seats
    end
    
    def delete_booking(id)
        @id = id - 1
        @seats_booked -= @bookings[id].seats
        @bookings.slice!(id)
    end
end