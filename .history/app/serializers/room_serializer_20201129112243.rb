class RoomSerializer < ActiveModel::Serializer
  attributes :id, :name, :created_at, :updated_at
  has_many :messages

  has_many :users, through


end
