class Event < ActiveRecord::Base
    belongs_to :artist
    belongs_to :venue
    has_many :users, through: :user_events

    def self.new_event
        puts "Who did you see?"
        artist = gets.chomp()
        act = Artist.all.find_or_create_by(name:artist.downcase)
            if act.genre == nil
                puts "What genre of music is this?"
                input_genre = gets.chomp()
                act.genre = input_genre
                act.save
            end
        puts "Which venue did you see them?"
        venue = gets.chomp()
        show = Venue.all.find_or_create_by(name:venue.downcase)
            if show.city == nil
                puts "What city is this venue in?"
                input_city = gets.chomp()
                show.city = input_city
                show.save
            end
        end


end