class MessageSerializer < ActiveModel::Serializer
  attributes :id, :room_id, :user_id, :created_at, :created_at
end
