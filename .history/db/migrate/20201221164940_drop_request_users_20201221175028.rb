class DropRequestUsers < ActiveRecord::Migration[6.0]
  def change
    drop_table :request_users
  end
end
