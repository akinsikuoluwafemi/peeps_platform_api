class AddUserIdToRequests < ActiveRecord::Migration[6.0]
  def change
    add_column :articles
  end
end
