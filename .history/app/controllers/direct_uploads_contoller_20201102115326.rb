class DirectUploadsController < ActiveStorage::DirectUploadsController  
  protect_from_forgery with: :exception  
  skip_before_action :verify_authenticity_token

  blob = ActiveStorage::Blob.create_before_direct_upload!(blob_args)
    render json: direct_upload_json(blob)




end