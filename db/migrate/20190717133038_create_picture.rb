class CreatePic < ActiveRecord::Migration[5.2]
  def change
    create_table :pics do |t|
      t.integer :user_id
      t.integer :station_id
      t.string :pic_url
      t.integer :rating
    end
  end
end
