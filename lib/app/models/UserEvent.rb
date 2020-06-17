class UserEvent < ActiveRecord::Base
    belongs_to :user
    belongs_to :event
    # has_many :venues, through: :events
    # has_many :artists, through: :events


end