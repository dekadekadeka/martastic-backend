class CreateUser < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :profile_pic_url
      t.string :location
      t.string :fav_station
    end
  end
end
