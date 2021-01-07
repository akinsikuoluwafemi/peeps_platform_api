class Room < ApplicationRecord
    # before_save { self.name = name.strip }
    validates :name, presence: true

    has_many :messages, dependent: :destroy
    has_many :users, through: :messages




    has_and_belongs_to_many :requests







end
