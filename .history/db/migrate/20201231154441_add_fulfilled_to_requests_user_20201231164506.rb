class AddFulfilledToRequestsUser < ActiveRecord::Migration[6.0]
  def change
    add_column :requests, :user_id, :int
    change_column :requests, :fulfilled, :boolean, default: false

  end
end
