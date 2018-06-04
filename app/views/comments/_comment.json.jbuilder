json.extract! comment, :id, :topic_id, :content, :like, :created_at, :updated_at
json.url comment_url(comment, format: :json)
