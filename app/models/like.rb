class Like < ApplicationRecord
  belongs_to :topic
  belongs_to :comment, counter_cache: :like
end
