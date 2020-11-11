class UserSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :first_name, :last_name, :email, :password_digest, :avatar, :created_at, :updated_at
  # attributes :id, :first_name, :last_name, :email, :password_digest, :created_at, :updated_at


  # def avatar
  #   return unless object.avatar.attached?

  #   object.avatar.blob.attributes
  #         .slice('filename', 'byte_size')
  #         .merge(url: avatar_url)
  #         .tap { |attrs| attrs['name'] = attrs.delete('filename') }

    
  # end

  # def avatar_url 
  #   url_for(object.avatar)

  # end


   attribute :avatar_url do |user| 
    Rails.application.routes.url_helpers.rails_blob_path(user.avatar) if user.avatar.attached?
  end
  attribute :rooms do |user|
    user.rooms.uniq
  end


end
