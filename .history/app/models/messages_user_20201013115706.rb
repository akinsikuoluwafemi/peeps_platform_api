class MessagesUser < ApplicationRecord
    # belongs_to :user
    # belongs_to :message

    belongs_to :sender, :foreign_key => :sender_id,

    validates :sender_id, presence: true
    validates :recipient_id, presence: true
    
end
