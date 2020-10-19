class AddRecipientIdToMessagesUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :messages_users, :sender_id, :int

  end
end
