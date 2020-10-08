class RequestsUser < ApplicationRecord
    belongs_to :user
    belongs_to :request

    validates :first_name, presence: true



end
