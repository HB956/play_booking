class View
    def separator
        puts "----------------------------------------"
    end
    
    def ask_play_name
        puts "Quel est le nom de la pièce ?"
        print "> "
        play_name = gets.chomp.split.map(&:capitalize).join(' ')
        return play_name
    end
    
    def ask_max_seats
        puts "Quel est le maximum de places ?"
        print "> "
        max_seats = gets.chomp.to_i
        return max_seats
    end
    
    def print_plays(plays)
        system "clear"
        separator
        puts "Liste des pièces :"
        puts ""
        plays.each_with_index do |play, index|
            puts "#{index + 1}. #{play.play_name} - #{play.max_seats} places, #{play.max_seats - play.seats_booked} restante(s)"
        end
        separator
    end
    
    def ask_id
        puts "Quel id ?"
        print "> "
        id = gets.chomp.to_i - 1
        return id
    end
    
    def ask_play_id
        puts "Quel id de pièce?"
        print "> "
        play_id = gets.chomp.to_i - 1
        return play_id
    end
    
    def ask_booking_id
        puts "Quel id de réservation ?"
        print "> "
        booking_id = gets.chomp.to_i - 1
        return booking_id
    end
    
    def ask_person
        puts "Nom de réservation ?"
        print "> "
        person = gets.chomp.split.map(&:capitalize).join(' ')
        return person
    end
    
    def ask_seats
        puts "Combien de places ?"
        print "> "
        seats = gets.chomp.to_i
        return seats
    end
    
    def print_bookings(play)
        play.bookings.each_with_index do |booking, index|
            puts "#{index + 1}. #{booking.person} - #{booking.seats}"
        end
        separator
    end
    
    def print_play_for_bookings(play)
        system "clear"
        separator
        puts "Réservation(s) pour #{play.play_name} :"
        puts ""
    end
end