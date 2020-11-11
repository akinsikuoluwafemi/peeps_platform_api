class RequestSerializer < ActiveModel::Serializer
  attributes :id, :description, :user_id, :body, :created_at, :updated_at

end
