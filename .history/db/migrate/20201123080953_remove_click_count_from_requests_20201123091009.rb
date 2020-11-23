class RemoveClickCountFromRequests < ActiveRecord::Migration[6.0]
  def change
    remove_column :messages_users, :recipient_id

  end
end
