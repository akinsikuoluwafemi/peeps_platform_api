class CreateVolunteers < ActiveRecord::Migration[6.0]
  def change
    create_table :volunteers do |t|
      t.integer :request
      t.timestamps
    end
  end
end
