class Message < ApplicationRecord
    

    validates :body, presence: true
    validates :user_id, presence: true

    has_and_belongs_to_many :users



end
