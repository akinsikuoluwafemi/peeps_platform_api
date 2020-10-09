class AddUserIdToMessagesUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :messages_users, :user_id, 
  end
end
