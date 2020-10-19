class RemoveUserIdColumnFromMessagesUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :requests, :user_id

  end
end
