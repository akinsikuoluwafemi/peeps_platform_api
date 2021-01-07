class Room < ApplicationRecord
    # before_save { self.name = name.strip }
    validates :name, presence: true

    has_many :messages
    has_many :users, through: :messages


    has_many :messages
    has_many :users, through: :messages





end
