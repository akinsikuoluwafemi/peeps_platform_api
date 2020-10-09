class AddMessageIdToMessagesUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :messages_users, :message_id
  end
end
