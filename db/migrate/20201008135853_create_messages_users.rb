class CreateMessagesUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :messages_users do |t|

      t.timestamps
    end
  end
end
