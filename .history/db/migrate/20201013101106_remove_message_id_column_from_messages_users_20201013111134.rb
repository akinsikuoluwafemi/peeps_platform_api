class RemoveMessageIdColumnFromMessagesUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :messages_users, :message_id

  end
end
