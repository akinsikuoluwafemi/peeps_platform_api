class AddClickCountToRequests < ActiveRecord::Migration[6.0]
  def change
    add_column :requests, :click_count, :in
  end
end
