class MessagesUser < ApplicationRecord
    # belongs_to :user
    # belongs_to :message

    
    has_many :messages, dependent: :destroy


    
    
end
