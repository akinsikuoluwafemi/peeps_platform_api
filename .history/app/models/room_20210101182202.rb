class Room < ApplicationRecord
    before_save { self.name = na.downcase }
    validates :name, presence: true

    has_many :messages
    has_many :users, through: :messages

end
