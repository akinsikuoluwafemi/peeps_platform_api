class RemoveFulfilledFromRequestsUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :requests_users, :click_coun
    add_column :requests_users, :fulfilled, :boolean, default: false

  end
end
