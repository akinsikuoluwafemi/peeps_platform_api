class AddFulfilledToRequestsUser < ActiveRecord::Migration[6.0]
  def change
    add_column :requests_users, :fulfilled, :boolean, default: false
    change_column :requests, :fulfilled, :boolean, default: false

  end
end
