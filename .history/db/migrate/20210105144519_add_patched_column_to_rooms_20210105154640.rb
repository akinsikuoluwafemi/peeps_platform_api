class AddPatchedColumnToRooms < ActiveRecord::Migration[6.0]
  def change
    add_column :rooms, :patched, :boolean, default: false

  end
end
