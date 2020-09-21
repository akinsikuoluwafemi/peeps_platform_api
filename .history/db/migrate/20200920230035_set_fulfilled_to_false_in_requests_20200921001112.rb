class SetFulfilledToFalseInRequests < ActiveRecord::Migration[6.0]
  def self.up
    change_column :requests, :fulfilled_type, default: false
  end
end
