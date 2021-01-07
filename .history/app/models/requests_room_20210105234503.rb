class RequestsRoom < ApplicationRecord
    belongs_to :room
    belongs_to :request


    validates :room_id, presence: true
    validates :request_id, presence: true


end
