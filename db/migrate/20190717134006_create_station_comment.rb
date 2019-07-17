class CreateStationComment < ActiveRecord::Migration[5.2]
  def change
    create_table :station_comments do |t|
      t.integer :station_id
      t.string :content
    end
  end
end
