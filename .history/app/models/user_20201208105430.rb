 class User < ApplicationRecord
    has_secure_password
  
    
    

    has_one_attached :avatar

    validates :first_name, presence: true
    validates :first_name, length: { minimum: 4 }

    validates :last_name, presence: true
    # validates :last_name, length: { minimum: 4 }

    before_save { self.email = email.downcase }
    # validates :email, presence: true
    # validates :email, uniqueness: true

    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

    has_and_belongs_to_many :requests

    has_many :messages
    has_many :rooms, through: :messages

    def self.from_token_request(request)
        User.find_by(email: request.params[:auth][:email])
    end


end
