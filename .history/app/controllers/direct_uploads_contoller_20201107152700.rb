class DirectUploadsController < ActiveStorage::DirectUploadsController  
  protect_from_forgery with: :exception  

  def create
    blob = ActiveStorage::Blob.create_before_direct_upload!(blob_args)
    render json: direct_upload_json(blob)
  end



end