class AddPatchedColumnToRooms < ActiveRecord::Migration[6.0]
  def change
    add_column :rooms, :pat, :boolean, default: false

  end
end
