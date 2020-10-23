class MessageSerializer < ActiveModel::Serializer
  attributes :id, :room_id, :user_id
end
