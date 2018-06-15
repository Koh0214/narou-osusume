class Comment < ApplicationRecord
  belongs_to :topic
  has_many :likes, :dependent => :destroy
  validates :content, presence: true
end
