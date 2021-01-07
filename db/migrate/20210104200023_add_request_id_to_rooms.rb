class AddRequestIdToRooms < ActiveRecord::Migration[6.0]
  def change
    add_column :rooms, :request_id, :int

  end
end
