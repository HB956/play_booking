require_relative "play"
require_relative "booking"
require_relative "view"

class Controller
    def initialize
        @plays = []
        @view = View.new
    end
    
    # Ajouter une pièce à la liste
    def add_play
        play_name = @view.ask_play_name
        max_seats = @view.ask_max_seats
        @plays << Play.new(play_name, max_seats)
    end
    # lister les pieces/places
    def list_plays
        @view.print_plays(@plays)
    end
    
    # Faire une réservation
    def add_booking
        @view.print_plays(@plays)
        play_id = @view.ask_play_id
        person = @view.ask_person
        seats = @view.ask_seats
        play = @plays[play_id]
        play.add_booking(person, seats)
    end
    
    # Afficher les réservation
    def list_bookings
        @view.print_plays(@plays)
        play_id = @view.ask_play_id
        play = @plays[play_id]
        @view.print_play_for_bookings(play)
        @view.print_bookings(play)
    end
    
    # supprimer une résa
    def delete_booking
        @view.print_plays(@plays)
        play_id = @view.ask_play_id
        play = @plays[play_id]
        @view.print_play_for_bookings(play)
        @view.print_bookings(play)
        booking_id = @view.ask_booking_id
        @plays[play_id].delete_booking(booking_id)
    end
    
end