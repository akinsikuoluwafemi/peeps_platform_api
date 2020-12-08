class Room < ApplicationRecord
    validates :first_name, presence: true

    has_many :messages
    has_many :users, through: :messages

end
