class MessagesUser < ApplicationRecord
    belongs_to :sender
    belongs_to :re

    validates :sender_id, presence: true
    validates :recipient_id, presence: true
    
end
