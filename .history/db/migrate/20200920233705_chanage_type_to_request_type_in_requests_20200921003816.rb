class ChanageTypeToRequestTypeInRequests < ActiveRecord::Migration[6.0]
  def change
    change_column :requests, :type, :string

  end
end
