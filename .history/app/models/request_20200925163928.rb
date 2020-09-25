class Request < ApplicationRecord
    validates :description, presence: true
    validates :description, length: { maximum: 300 }

    validates :lat, presence: true
    validates :lng, presence: true

    validates :request_type, presence: true

    belo
    
end
