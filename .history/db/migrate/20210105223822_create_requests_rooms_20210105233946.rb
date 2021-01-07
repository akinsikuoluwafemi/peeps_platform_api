class CreateRequestsRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :requests_rooms do |t|
      
      t.timestamps
    end
  end
end
