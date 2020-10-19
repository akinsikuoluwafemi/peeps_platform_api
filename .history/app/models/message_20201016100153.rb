class Message < ApplicationRecord
    
     belongs_to :user
  belongs_to :room

    validates :body, presence: true
    validates :user_id, presence: true


end
