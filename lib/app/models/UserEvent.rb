class UserEvent < ActiveRecord::Base
    belongs_to :user
    belongs_to :event
    has_many :venues, through: :events
    has_many :artists, through: :events

    def self.new_user_event(self_user,user_event)
        UserEvent.create(self_user, user_event)

    end 

end