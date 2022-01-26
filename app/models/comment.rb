class Comment < ApplicationRecord
  belongs_to :post

  validates :body, presence: true, length: { maximum: 30 }
end
