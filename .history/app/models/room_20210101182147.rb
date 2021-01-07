class Room < ApplicationRecord
    before_save { self.email = email.downcase }
    validates :name, presence: true

    has_many :messages
    has_many :users, through: :messages

end
