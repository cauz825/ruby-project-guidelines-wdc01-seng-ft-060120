class Venue < ActiveRecord::Base
    has_many :events
    has_many :artists, through: :events
    has_many :user_events, through: :events
    has_many :users, through: :user_events
end