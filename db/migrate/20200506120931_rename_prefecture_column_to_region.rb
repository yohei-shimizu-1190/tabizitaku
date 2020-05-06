class RenamePrefectureColumnToRegion < ActiveRecord::Migration[5.2]
  def change
    rename_column :spots, :prefecture, :region
  end
end
