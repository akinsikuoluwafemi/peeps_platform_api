class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.text :description
      t.float :lat
      t.float :lng
      t.boolean :fulfilled
      t.string :type

      t.timestamps
    end
  end
end
