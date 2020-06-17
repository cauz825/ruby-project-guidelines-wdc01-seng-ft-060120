class Cli 
    
    attr_accessor :user

    def welcoming_user
        puts "Welcome to Zara and Mike's Awesome Concert Journal App!"
        puts "Enter Username"
        input = gets.chomp()
       self.user = User.find_user_by_username(input.downcase)
        self.option
    end

    def option
        puts "What can I help you with?"
        puts "1 - Create Event"
        puts "2 - List all my events"
        puts "3 - What was my best show?"
        second_input = gets.chomp().to_i
        if second_input == 1
            self.create_event
        elsif second_input == 2
            self.all_user_events
        elsif second_input == 3
            self.best_concert
            # binding.pry
        else
            puts "************************************"
            puts "Input not found, please select again"
            puts "************************************"
        end

    end 

    def create_event
            create_event = Event.new_event
            puts "did you attend this event?"
            event_input = gets.chomp
            if event_input == "yes"
                puts "Rate the event on a scale of 1-10"
                rating_input = gets.chomp().to_i.clamp(1, 10)
                UserEvent.create(user:self.user, event:create_event, rating:rating_input)
            end         
    end

     def all_user_events
        self.user.events.each do |event|
            # binding.pry
            puts "Artist: #{event.artist.name.titleize}"
            puts "Venue: #{event.venue.name.titleize}"
            puts "Date: #{event.event_date}"
            puts "Rating: (COME BACK TO THIS)"
            binding.pry
            puts "**************"
        end
    end

    def best_concert
        rating_array = self.user.user_events.map do |ue|
            ue.rating
        end
        rating_array.max
        binding.pry
    end
        
    def run
        self.welcoming_user
    end 


end 