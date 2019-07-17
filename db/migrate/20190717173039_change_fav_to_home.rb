class ChangeFavToHome < ActiveRecord::Migration[5.2]
  def change
    change_table :users do |t|
      t.rename :fav_station, :home_station
    end
  end
end
