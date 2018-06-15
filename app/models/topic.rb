class Topic < ApplicationRecord
  has_many :comments
  is_impressionable
  validates :content, presence: true
end
