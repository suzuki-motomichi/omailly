class Post < ApplicationRecord
  validates :title, presence: true, length: { maximum: 35 }
  validates :content, presence: true, length: { maximum: 400 }
  validates :last_day, length: { maximum: 9999 }

  enum status: { years: 0, month: 1, day: 2, hours: 3, minute: 4, seconds: 5 }
end
