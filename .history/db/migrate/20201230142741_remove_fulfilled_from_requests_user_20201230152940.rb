class RemoveFulfilledFromRequestsUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :requests, :click_count
    add_column :requests_users, :fulfilled, :boolean, default: false

  end
end
