class AddPatchedColumnToRooms < ActiveRecord::Migration[6.0]
  def change
    add_column :requests, :fulfilled, :boolean, default: false

  end
end
