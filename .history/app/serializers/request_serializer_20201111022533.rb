class RequestSerializer < ActiveModel::Serializer
  attributes :id
  attributes :id, :room_id, :user_id, :body, :created_at, :updated_at

end
