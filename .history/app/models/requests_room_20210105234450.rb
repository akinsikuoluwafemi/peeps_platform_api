class RequestsRoom < ApplicationRecord
    belongs_to :room
    belongs_to :request


    validates :request_id, presence: true
    validates :user_id, presence: true


end
