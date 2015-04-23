json.array!(@users) do |user|
  json.extract! user, :id, :name, :bio, :password, :password_confirmation
  json.url user_url(user, format: :json)
end
