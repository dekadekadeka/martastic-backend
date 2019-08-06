class ChangeRatingToLikes < ActiveRecord::Migration[5.2]
  def change
    rename_column :pics, :rating, :likes
    rename_column :stations, :rating, :likes
  end
end
