class RenameSpotColumnToName < ActiveRecord::Migration[5.2]
  def change
    rename_column :spots, :spot, :name
  end
end
