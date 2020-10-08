json.extract! messages_user, :id, :created_at, :updated_at
json.url messages_user_url(messages_user, format: :json)
