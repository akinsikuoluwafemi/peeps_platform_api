class Message < ApplicationRecord
    
     belongs_to :user
     belongs_to :roomR

    validates :body, presence: true
    validates :user_id, presence: true


end
