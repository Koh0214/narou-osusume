json.extract! topic, :id, :content, :like, :created_at, :updated_at
json.url topic_url(topic, format: :json)
