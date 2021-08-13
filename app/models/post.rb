class Post < ApplicationRecord

  validates :title, presence: true, length: { maximum: 40 }
  validates :content, presence: true, length: { maximum: 400 }
  validates :last_day, length: { maximum: 9999 }
end
