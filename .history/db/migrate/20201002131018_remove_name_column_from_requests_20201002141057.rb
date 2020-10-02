class RemoveNameColumnFromRequests < ActiveRecord::Migration[6.0]
  def change
    remove_column :request, :column_name
  end
end
