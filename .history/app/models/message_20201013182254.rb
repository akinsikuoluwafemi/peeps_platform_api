class Message < ApplicationRecord
    has_and_belongs_to_many :messages
    


    validates :body, presence: true
    validates :messages_users_id, presence: true
    validates :user_id, presence: true


end
