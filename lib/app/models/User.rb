class User < ActiveRecord::Base
    has_many :user_events 
    has_many :events, through: :user_events
    

    def self.find_user_by_username(input)
        User.all.find_or_create_by(username:input.downcase)
    end

    
end