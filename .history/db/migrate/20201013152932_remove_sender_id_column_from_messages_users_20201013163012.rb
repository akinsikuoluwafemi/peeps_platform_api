class RemoveSenderIdColumnFromMessagesUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :messages_users, :sender_id

  end
end
