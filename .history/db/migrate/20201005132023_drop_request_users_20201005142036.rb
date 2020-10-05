class DropRequestUsers < ActiveRecord::Migration[6.0]
  def change
    drop_table :requests_users

  end
end
