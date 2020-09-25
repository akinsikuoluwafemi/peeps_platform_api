class User < ApplicationRecord
    has_secure_password

    validates :first_name, presence: true
    validates :first_name, length: { minimum: 4 }

    validates :last_name, presence: true
    validates :last_name, length: { minimum: 4 }

    validates :email, presence: true
    validates :email, uniqueness: true

    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
