json.extract! todo, :id, :photo, :name, :description, :created_at, :updated_at
json.url todo_url(todo, format: :json)
