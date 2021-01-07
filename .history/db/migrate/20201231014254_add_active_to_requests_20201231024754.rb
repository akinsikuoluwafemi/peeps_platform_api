class AddActiveToRequests < ActiveRecord::Migration[6.0]
  def change
    change_column :requests, :fulfilled, :boolean, default: false
    add_column :requests, :active, :integer, default: 0

  end
end
