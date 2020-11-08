class DirectUploadsController < ActiveStorage::DirectUploadsController  
  skip_before_action :verify_authenticity_token
  
  # protect_from_forgery with: :exception  

  def create
    blob = ActiveStorage::Blob.create_before_direct_upload!(blob_args)
    render json: direct_upload_json(blob)
  end

  def direct_upload_json(blob)
    blob.as_json(root: false, methods: :signed_id).merge(service_url: url_for(blob)).merge(direct_upload: {
      url: blob
    })
  
  
  end




end