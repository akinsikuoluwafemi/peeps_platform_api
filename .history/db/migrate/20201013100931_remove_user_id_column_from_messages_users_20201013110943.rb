class RemoveUserIdColumnFromMessagesUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :requests, :name

  end
end
