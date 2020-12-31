class RequestsUser < ApplicationRecord
    belongs_to :user
    belongs_to :request

    has_many :messages
    

    validates :request_id, presence: true
    validates :user_id, presence: true



end
