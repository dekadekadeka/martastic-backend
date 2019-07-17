class AddUserColumns < ActiveRecord::Migration[5.2]
  def change
    add_column :station_comments, :user_id, :integer
    add_column :pic_comments, :user_id, :integer
  end
end
