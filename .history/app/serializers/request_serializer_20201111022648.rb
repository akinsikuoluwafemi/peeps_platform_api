class RequestSerializer < ActiveModel::Serializer
  attributes :id, :description, :lat, :lng, :fulfilled, : :created_at, :updated_at

end
