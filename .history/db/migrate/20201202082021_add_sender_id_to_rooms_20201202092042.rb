class AddSenderIdToRooms < ActiveRecord::Migration[6.0]
  def change
    add_column :rooms, :sender_id, :int

  end
end
