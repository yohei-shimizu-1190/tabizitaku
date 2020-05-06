class CreateSpots < ActiveRecord::Migration[5.2]
  def change
    create_table :spots do |t|
      t.string :spot, null: false
      t.text :content, null: false
      t.string :image, null: false
      t.string :prefecture, null: false
      t.timestamps
    end
  end
end
