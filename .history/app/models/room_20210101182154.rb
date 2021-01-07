class Room < ApplicationRecord
    before_save { self.name = email.downcase }
    validates :name, presence: true

    has_many :messages
    has_many :users, through: :messages

end
