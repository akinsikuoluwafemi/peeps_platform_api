class MessagesUser < ApplicationRecord
    belongs_to :user
    belongs_to :message

     validates :request_id, presence: true
    validates :user_id, presence: true
    
end
