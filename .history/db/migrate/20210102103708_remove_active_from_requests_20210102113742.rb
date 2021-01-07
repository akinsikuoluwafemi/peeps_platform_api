class RemoveActiveFromRequests < ActiveRecord::Migration[6.0]
  def change
    remove_column :requests, :active

  end
end
