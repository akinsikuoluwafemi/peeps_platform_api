class RemoveFulfilledFromRequestsUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :requests_users, :fulfilled

  end
end
