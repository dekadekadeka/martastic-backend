class Drop < ActiveRecord::Migration[5.2]
  def change
    drop_table :station_comments
    drop_table :pic_comments
  end
end
