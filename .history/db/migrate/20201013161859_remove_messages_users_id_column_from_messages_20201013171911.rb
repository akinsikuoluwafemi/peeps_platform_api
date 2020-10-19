class RemoveMessagesUsersIdColumnFromMessages < ActiveRecord::Migration[6.0]
  def change
    remove_column :messages, :messages_users_id, :int

  end
end
