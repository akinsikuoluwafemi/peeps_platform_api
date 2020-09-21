class Request < ApplicationRecord
    validates :description, presence: true
    validates :description, length: { maximum: 300 }

    validates :lat, presence: true
    validates :lng, presence: true

    validates :type, presence: true
    
end
