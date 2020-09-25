class User < ApplicationRecord
    has_secure_password

#     def self.from_token_request(request)
#     User.find_by(name: request.params[:auth][:email])
#   end 
    validates :first_name, presence: true
    validates :first_name, length: { minimum: 4 }

    validates :last_name, presence: true
    validates :last_name, length: { minimum: 4 }

    validates :email, presence: true
    validates :email, uniqueness: true

    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end