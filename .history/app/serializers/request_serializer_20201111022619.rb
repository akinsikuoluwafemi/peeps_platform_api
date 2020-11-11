class RequestSerializer < ActiveModel::Serializer
  attributes :id, :description, :lat, :lng, :created_at, :updated_at

end
