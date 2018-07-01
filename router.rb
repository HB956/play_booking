require_relative "controller"

class Router
    def initialize
        @controller = Controller.new
    end
    
    def start
        loop do
            puts ""
            puts "Que voulez-vous faire ? (1 = Ajout pièce / 2 = Liste pièces / 3 = Ajout résa / 4 = Liste résa / 5 = Suppr résa)"
            print "> "
            action = gets.chomp.to_i
            
            if action == 1
                @controller.add_play
            elsif action == 2
                @controller.list_plays
            elsif action == 3
                @controller.add_booking
            elsif action == 4
                @controller.list_bookings
            elsif action == 5
                @controller.delete_booking
            else
                puts "Mauvais choix"
            end
        end
    end
end