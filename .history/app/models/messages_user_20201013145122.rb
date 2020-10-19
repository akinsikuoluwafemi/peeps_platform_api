class MessagesUser < ApplicationRecord
    # belongs_to :user
    # belongs_to :message

    
    has_many :messages, dependent: :destroy


    # scope :between, -> (sender_id,recipient_id) do
    # where(“(messages_users.sender_id = ? AND messages_users.recipient_id =?) OR (messages_users.sender_id = ? AND messages_users.recipient_id =?)”, sender_id,recipient_id, recipient_id, sender_id)

    # end
    # validates :sender_id, presence: true
    # validates :recipient_id, presence: true
    
end
