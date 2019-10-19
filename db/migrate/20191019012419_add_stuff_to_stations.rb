class AddStuffToStations < ActiveRecord::Migration[5.2]
  def change
    add_column :stations, :coords, :string
    add_column :stations, :address, :string
    add_column :stations, :description, :string
  end
end
