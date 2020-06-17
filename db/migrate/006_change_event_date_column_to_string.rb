class ChangeEventDateColumnToString < ActiveRecord::Migration[4.2]
    def change
        change_column :events, :event_date, :string
    end
end