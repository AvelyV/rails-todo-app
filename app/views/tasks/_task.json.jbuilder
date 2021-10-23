json.extract! task, :id, :name, :comment, :due, :done, :user_id, :created_at, :updated_at
json.url task_url(task, format: :json)
