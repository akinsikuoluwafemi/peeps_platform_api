class AddReceiverIdToRooms < ActiveRecord::Migration[6.0]
  def change
    add_column :messages_users, :recipient_id, :int

  end
end
