class UserSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :first_name, :last_name, :email, :password_digest, :avatar, :created_at, :updated_at

  def avatar
    return unless object.image.attached?
    
  end


end
