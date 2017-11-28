json.extract! project, :id, :proj_name, :proj_description, :goal_funding, :start_date, :end_date, :image_url, :active, :user_id, :created_at, :updated_at
json.url project_url(project, format: :json)
