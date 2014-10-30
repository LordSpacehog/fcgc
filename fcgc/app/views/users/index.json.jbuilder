json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :bio, :website, :password_digest
  json.url user_url(user, format: :json)
end
