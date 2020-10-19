class MessagesUser < ApplicationRecord
    # belongs_to :user
    # belongs_to :message

    validates :sender_id, presence: true
    validates :recipient_id, presence: true
    
end
