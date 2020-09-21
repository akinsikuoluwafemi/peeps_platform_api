class SetFulfilledToFalseInRequests < ActiveRecord::Migration[6.0]
  def change
    change_column :requests, :fulfilled_types, :boolean, default: false
  end
end
