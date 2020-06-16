class Artist < ActiveRecord::Base
    has_many :events
    has_many :venues, through: :events
    has_many :user_events, through: :events
    has_many :users, through: :user_events
end