class Message < ApplicationRecord
    validates :first_name, presence: true

    validates :body, presence: true
    # validates :user_id, presence: true

     belongs_to :user
     belongs_to :room

end
