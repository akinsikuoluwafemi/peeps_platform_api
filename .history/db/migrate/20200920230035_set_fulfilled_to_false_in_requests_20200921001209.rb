class SetFulfilledToFalseInRequests < ActiveRecord::Migration[6.0]
  def change
    change_column :requests, :status_fulfilled, default: false
  end
end
