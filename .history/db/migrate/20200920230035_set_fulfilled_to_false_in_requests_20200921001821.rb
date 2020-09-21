class SetFulfilledToFalseInRequests < ActiveRecord::Migration[6.0]
  def change
    change_column :requests, :fulfilled_state, :boolean, default: false
  end
end
