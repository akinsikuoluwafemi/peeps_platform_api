json.extract! request, :id, :description, :lat, :lng, :fulfilled, :type, :created_at, :updated_at
json.url request_url(request, format: :json)
