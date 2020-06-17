class ChangeReviewToInteger < ActiveRecord::Migration[4.2]
    def change
        change_column :user_events, :review, :integer
    end
end