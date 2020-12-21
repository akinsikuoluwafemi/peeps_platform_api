class DropTableResponders < ActiveRecord::Migration[6.0]
  def change
    drop_table :table_name
  end
end
