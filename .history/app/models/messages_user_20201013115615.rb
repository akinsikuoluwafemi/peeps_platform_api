class MessagesUser < ApplicationRecord
    belongs_to :sender, :foreign_key => :sender
    belongs_to :recipient

    validates :sender_id, presence: true
    validates :recipient_id, presence: true
    
end
