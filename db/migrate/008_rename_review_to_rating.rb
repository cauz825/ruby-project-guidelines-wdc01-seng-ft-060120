class RenameReviewToRating < ActiveRecord::Migration[4.2]
    def change
        rename_column :user_events, :review, :rating
    end
end