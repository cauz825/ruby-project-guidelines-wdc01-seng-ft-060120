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
        second_input = gets.chomp().to_i
        if second_input == 1
            self.create_event
        elsif second_input == 2
            self.all_user_events
        end

    end 

    def self.create_event
            create_event = Event.new_event
            puts "did you attend this event?"
            event_input = gets.chomp
            if event_input == "yes"
                UserEvent.create(user: @user_input,event: create_event)
            end         
     end

     def all_user_events
        self.user.events.map { |event| event.artist }
        binding.pry
        self.user
        
        
    end 
        
    def run
        self.welcoming_user
    end 


end 


   
    #         def option_choice(second_input)
    #             if second_input == 1
    #                 user_event = Event.new_event
    #                 puts "did you attend this event?"
    #                 event_input = gets.chomp
    #                 if event_input == "yes"
    #                     binding.pry
    #                     UserEvent.new_user_event(@self_user,user_event)
    #                 end
                    
    #             elsif second_input == 2
    #             end
    #         end
    #     option_choice(second_input)