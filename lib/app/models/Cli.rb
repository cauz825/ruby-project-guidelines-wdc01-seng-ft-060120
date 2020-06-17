class Cli < ActiveRecord::Base
    
    def self.welcoming_user
        puts "Welcome to Zara and Mike's Awesome Concert Journal App!"
        puts "Enter Username"
        input = gets.chomp()
       @user_input = User.find_username(input.downcase)
    end

    def self.option
        puts "What can I help you with?"
        puts "1 - Create Event"
        puts "2 - How many times have i seen ()"
        @second_input = gets.chomp().to_i
    end 

    def self.option_choice
        if @second_input == 1
            create_event = Event.new_event
            puts "did you attend this event?"
            event_input = gets.chomp
            if event_input == "yes"
                UserEvent.create(user: @user_input,event: create_event)
            end
            
        elsif second_input == 2
        end
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