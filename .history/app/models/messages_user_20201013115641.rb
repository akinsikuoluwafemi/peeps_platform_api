class MessagesUser < ApplicationRecord
    # belongs_to :user
    # belongs_to :message

    belong

    validates :sender_id, presence: true
    validates :recipient_id, presence: true
    
end
