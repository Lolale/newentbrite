json.extract! event, :id, :description, :first_name, :last_name, :created_at, :updated_at
json.url event_url(event, format: :json)
