class User < ActiveRecord::Base
    has_many :artists, through: :events
    has_many :venues, through: :events
    has_many :user_events

    def self.find_username(input)
        User.all.find_or_create_by(username:input.downcase)
        # binding.pry
       
    end
end