json.extract! reward, :id, :reward_name, :reward_amount, :reward_description, :reward_limit, :project_id, :created_at, :updated_at
json.url reward_url(reward, format: :json)
