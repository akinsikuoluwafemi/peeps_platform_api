class AddRequestIdToRooms < ActiveRecord::Migration[6.0]
  def change
    add_column :messages, :room_id, :int

  end
end
