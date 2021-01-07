class Room < ApplicationRecord
    validates :name, presence: true

    has_many :messages
    has_many :users, through: :messages













end
