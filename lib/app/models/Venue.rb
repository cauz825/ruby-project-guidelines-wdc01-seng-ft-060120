class Venue < ActiveRecord::Base
    has_many :events
    has_many :artists, through: :events
    

    def new_venue(name, city)
    end
end