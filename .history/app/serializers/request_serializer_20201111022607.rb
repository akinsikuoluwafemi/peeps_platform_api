class RequestSerializer < ActiveModel::Serializer
  attributes :id, :description, :lat, :body, :created_at, :updated_at

end
