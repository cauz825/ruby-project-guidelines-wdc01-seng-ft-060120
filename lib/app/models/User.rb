class User < ActiveRecord::Base
    has_many :artists, through: :events
    has_many :venues, through: :events
    has_many :user_events
end