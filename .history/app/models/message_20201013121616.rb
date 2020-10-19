class Message < ApplicationRecord
    belongs_to :messages_user
    belongs_to :user


    validates :body, presence: true
    
    validates :user_id, presence: true

    # has_and_belongs_to_many :users



end
