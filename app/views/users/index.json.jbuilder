json.array!(@users) do |user|
  json.extract! user, :id, :username, :password, :height, :weight, :sex, :activity_level
  json.url user_url(user, format: :json)
end
