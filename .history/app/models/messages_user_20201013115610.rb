class MessagesUser < ApplicationRecord
    belongs_to :sender, :foreign_key =>
    belongs_to :recipient

    validates :sender_id, presence: true
    validates :recipient_id, presence: true
    
end
