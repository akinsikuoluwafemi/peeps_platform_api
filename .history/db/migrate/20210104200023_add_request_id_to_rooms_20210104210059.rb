class AddRequestIdToRooms < ActiveRecord::Migration[6.0]
  def change
    add_column :rooms, :room_id, :int

  end
end
