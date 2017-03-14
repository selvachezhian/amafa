json.extract! employee, :id, :first_name, :last_name, :email, :user_name, :joining_date, :relieving_date, :emp_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
