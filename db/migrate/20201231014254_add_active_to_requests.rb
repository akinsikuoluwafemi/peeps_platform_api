class AddActiveToRequests < ActiveRecord::Migration[6.0]
  def change
    add_column :requests, :active, :boolean, default: true

  end
end
