class ChangeDataPhotoImageToPhoto < ActiveRecord::Migration[5.2]
  def change
    change_column :photos, :photo_image, :string
  end
end
