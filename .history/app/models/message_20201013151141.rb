class Message < ApplicationRecord
    has_many :messages_users
    has_many :users, 


    validates :body, presence: true
    validates :messages_users_id, presence: true
    validates :user_id, presence: true


end