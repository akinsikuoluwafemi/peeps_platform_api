class DropMessagesUsers < ActiveRecord::Migration[6.0]
  def change
    drop_table :request_users

    messages_users
  end
end
