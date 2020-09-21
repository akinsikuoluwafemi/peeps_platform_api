class ChanageTypeToRequestTypeInRequests < ActiveRecord::Migration[6.0]
  def change
    rename_column :requests, :type, :request_type

  end
end
