class CreateEvents < ActiveRecord::Migration[4.2]
    def change
        create_table :events do |t|
            t.integer :artist_id
            t.integer :venue_id
            t.datetime :event_date
        end
    end
end