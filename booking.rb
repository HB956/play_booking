class Booking
    attr_reader :person, :seats
    
    def initialize(person, seats)
        @person = person
        @seats = seats
    end
end