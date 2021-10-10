class Post < ApplicationRecord
  validates :title, check_person_name: true, presence: true, length: { maximum: 30 }
  validates :content, presence: true, length: { maximum: 200 }
  validates :last_day, length: { maximum: 9999 }

  enum status: { years: 0, month: 1, day: 2, hours: 3, minute: 4, seconds: 5 }
end
