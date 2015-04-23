json.array!(@users) do |user|
  json.extract! user, :id, :name, :bio, :password_digest, :mail
  json.url user_url(user, format: :json)
end
