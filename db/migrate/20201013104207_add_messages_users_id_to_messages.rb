class AddMessagesUsersIdToMessages < ActiveRecord::Migration[6.0]
  def change
    add_column :messages, :messages_users_id, :int

  end
end
