class Message < ApplicationRecord
    has_many :messages_users
    belongs_to :user


    validates :body, presence: true
    validates :messages_users_id, presence: true
    validates :user_id, presence: true

    # has_and_belongs_to_many :users



end
