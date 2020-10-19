class RemoveUserIdColumnFromMessagesUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :messages_users, :user_id

  end
end
