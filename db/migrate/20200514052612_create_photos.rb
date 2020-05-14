class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.text :text,           null: false
      t.integer :photo_image, null: false
      t.references :user,  foreign_key: true
      t.references :spot,  foreign_key: true
      t.timestamps
    end
  end
end
