class RemoveStatysFromSpot < ActiveRecord::Migration[5.2]
  def change
    remove_column :spots, :status, :integer
  end
end
