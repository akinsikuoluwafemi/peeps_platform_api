class AddReceiverIdToRooms < ActiveRecord::Migration[6.0]
  def change
    add_column :rooms, :receiver_id, :int

  end
end
