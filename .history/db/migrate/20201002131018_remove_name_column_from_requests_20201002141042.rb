class RemoveNameColumnFromRequests < ActiveRecord::Migration[6.0]
  def change
    remove_column :table_name, :column_name
  end
end
