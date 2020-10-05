class CreateRequestsUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :requests_users do |t|
      t.inte
      t.timestamps
    end
  end
end
