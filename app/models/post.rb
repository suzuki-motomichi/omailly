class Post < ApplicationRecord

  validates :title, presence: true, length: { maximum: 255 }
  validates :content, presence: true, length: { maximum: 65_535 }
  validates :last_day, length: { maximum: 9999 }
end
