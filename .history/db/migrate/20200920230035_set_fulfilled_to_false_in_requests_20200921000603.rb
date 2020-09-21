class SetFulfilledToFalseInRequests < ActiveRecord::Migration[6.0]
  def self.up
    change_column :fulfilled
  end
end
