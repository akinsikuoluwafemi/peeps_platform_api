class DirectUploadsController < ActiveStorage::DirectUploadsController  
  skip_before_action :verify_authenticity_token
  
  protect_from_forgery with: :exception  

  def create
    blob = ActiveStorage::Blob.create_before_direct_upload!(blob_args)
    render json: direct_upload_json(blob)
  end



end