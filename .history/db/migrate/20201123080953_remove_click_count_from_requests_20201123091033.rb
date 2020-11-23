class RemoveClickCountFromRequests < ActiveRecord::Migration[6.0]
  def change
    remove_column :reques, :click_count

  end
end
