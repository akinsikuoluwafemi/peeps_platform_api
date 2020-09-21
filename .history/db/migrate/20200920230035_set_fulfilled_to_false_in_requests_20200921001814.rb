class SetFulfilledToFalseInRequests < ActiveRecord::Migration[6.0]
  def change
    change_column :requests, :fulfilled_, :boolean, default: false
  end
end
