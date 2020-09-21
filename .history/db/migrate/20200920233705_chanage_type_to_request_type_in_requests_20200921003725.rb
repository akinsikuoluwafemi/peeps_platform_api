class ChanageTypeToRequestTypeInRequests < ActiveRecord::Migration[6.0]
  def change
    change_column :requests, :type, :boolean, default: false

  end
end
