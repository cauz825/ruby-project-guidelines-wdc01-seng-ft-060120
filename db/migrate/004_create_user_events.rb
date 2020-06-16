class CreateUserEvents < ActiveRecord::Migration[4.2]
    def change
        create_table :user_events do |t|
            t.integer :user_id
            t.integer :event_id
            t.string :review
        end
    end
end