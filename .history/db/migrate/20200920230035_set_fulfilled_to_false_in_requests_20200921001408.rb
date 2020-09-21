class SetFulfilledToFalseInRequests < ActiveRecord::Migration[6.0]
  def self.up
    change_column :requests, :fulfilled, default: false
  end
end
