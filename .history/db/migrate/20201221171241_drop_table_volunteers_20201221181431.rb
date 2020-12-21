class DropTableVolunteers < ActiveRecord::Migration[6.0]
  def change
    drop_table :responde

  end
end
