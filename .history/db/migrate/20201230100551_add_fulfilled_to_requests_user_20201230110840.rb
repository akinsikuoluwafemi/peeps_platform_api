class AddFulfilledToRequestsUser < ActiveRecord::Migration[6.0]
  def change
    add_column :messages, :user_id, :int

  end
end
