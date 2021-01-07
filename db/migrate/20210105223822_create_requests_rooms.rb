class CreateRequestsRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :requests_rooms do |t|
      t.integer :request_id
      t.integer :room_id
      t.timestamps
    end
  end
end
