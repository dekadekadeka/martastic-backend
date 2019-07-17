class CreatePicComment < ActiveRecord::Migration[5.2]
  def change
    create_table :pic_comments do |t|
      t.integer :pic_id
      t.string :content
    end
  end
end
