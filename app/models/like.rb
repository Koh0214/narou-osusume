class Like < ApplicationRecord
  belongs_to :comment_id, counter_cache: :likes_count
end
