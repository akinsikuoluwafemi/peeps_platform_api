class CreateRequestsUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :requests_users do |t|
      t.integer :request_id
      t.integer :
      t.timestamps
    end
  end
end
