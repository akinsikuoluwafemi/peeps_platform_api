class AddFulfilledToRequestsUser < ActiveRecord::Migration[6.0]
  def change
    add_column :requests_users, :fulfilled, :int

  end
end
