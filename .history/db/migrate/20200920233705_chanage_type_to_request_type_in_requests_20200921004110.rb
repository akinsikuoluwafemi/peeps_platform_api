class ChanageTypeToRequestTypeInRequests < ActiveRecord::Migration[6.0]
  def change
    _column :requests, :type, :string

  end
end
