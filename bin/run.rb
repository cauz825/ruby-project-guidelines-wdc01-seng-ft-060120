require_relative '../config/environment'
require_relative '../lib/app/models/User.rb'

    puts "Welcome to Zara and Mike's Awesome Concert Journal App!"
    puts "Enter Username"
    input = gets.chomp()
    # binding.pry
    User.find_username(input.downcase)
    puts "What can I help you with?"
    puts "1 - Create Event"
    puts "2 - How many times have i seen ()"
    second_input = gets.chomp().to_i
            def option_choice(second_input)
                if second_input == 1
                    user_event = Event.new_event
                    puts "did you attend this event?"
                    event_input = gets.chomp
                    if event_input == "yes"
                        UserEvent.new_user_event(@self_user,user_event)
                    end
                    
                elsif second_input == 2
                end
            end
        option_choice(second_input)
    #more options to be filled in
            


    #Display options
        #List of methods available

    



# puts "HELLO WORLD"
