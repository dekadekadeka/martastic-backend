class CreateStation < ActiveRecord::Migration[5.2]
  def change
    create_table :stations do |t|
      t.string :name
      t.integer :rating
    end
  end
end
