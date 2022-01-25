class Comment < ApplicationRecord
  belongs_to :posts

  validates :body, presence: true, length: { maximum: 30 }
end
