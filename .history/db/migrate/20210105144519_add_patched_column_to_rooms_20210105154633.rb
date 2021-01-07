class AddPatchedColumnToRooms < ActiveRecord::Migration[6.0]
  def change
    add_column :rooms, :patc, :boolean, default: false

  end
end
