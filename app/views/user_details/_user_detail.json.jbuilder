json.extract! user_detail, :id, :nickname, :profile, :user_id, :created_at, :updated_at
json.url user_detail_url(user_detail, format: :json)
