class CreateRequestUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :request_users do |t|

      t.timestamps
    end
  end
end
