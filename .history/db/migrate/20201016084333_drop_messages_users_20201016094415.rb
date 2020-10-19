class DropMessagesUsers < ActiveRecord::Migration[6.0]
  def change
    drop_table :messages_users

    
  end
end
