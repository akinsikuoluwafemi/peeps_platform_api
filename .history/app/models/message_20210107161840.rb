class Message < ApplicationRecord
    validates :body, presence: true
    # validates :user_id, presence: true
    # validates :room_id, presence: true


     belongs_to :user
     belongs_to :room

end
