class RemoveSlugFromStations < ActiveRecord::Migration[6.1]
  def change
    remove_column :stations, :slug, :string
  end
end
