class RequestSerializer < ActiveModel::Serializer
  attributes :id, :description, :lat, :lng, :fulfilled, :request_type, :created_at, :updated_at

end
