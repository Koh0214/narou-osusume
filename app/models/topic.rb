class Topic < ApplicationRecord
  has_many :comments
  is_impressionable
end
