class DropResponders < ActiveRecord::Migration[6.0]
  def change
    drop_table :responders

  end
end
