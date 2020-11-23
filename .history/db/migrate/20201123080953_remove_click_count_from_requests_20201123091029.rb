class RemoveClickCountFromRequests < ActiveRecord::Migration[6.0]
  def change
    remove_column :re, :click_count

  end
end
