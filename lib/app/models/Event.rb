class Events < ActiveRecord::Base
    belongs_to :artist
    belongs_to :venue
    has_many :users, through: :user_events
end