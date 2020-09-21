class SetFulfilledToFalseInRequests < ActiveRecord::Migration[6.0]
  def change
    change_column :requests, :fulfilled_type, :boolean, default: false
  end
end
