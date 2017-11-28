json.extract! user, :id, :first_name, :last_name, :email, :password, :credit_num, :credit_exp_date, :sec_code, :created_at, :updated_at
json.url user_url(user, format: :json)
