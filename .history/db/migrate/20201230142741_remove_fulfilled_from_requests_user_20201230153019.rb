class RemoveFulfilledFromRequestsUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :requests_users, :fulfilled
    add_column :requests_users, :fulfilled, :boolean, default: false

  end
end
