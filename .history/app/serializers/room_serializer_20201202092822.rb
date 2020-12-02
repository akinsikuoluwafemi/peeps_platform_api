class RoomSerializer < ActiveModel::Serializer
  attributes :id, :name, :sender_id, :receiver_id,  :created_at, :updated_at
  has_many :messages

  has_many :users, through: :messages


end
