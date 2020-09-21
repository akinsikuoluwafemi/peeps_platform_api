class SetFulfilledToFalseInRequests < ActiveRecord::Migration[6.0]
  def cha
    change_column :requests, :fulfilled, default: false
  end
end
