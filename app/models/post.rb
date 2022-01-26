class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :title, check_person_name: true, presence: true, length: { maximum: 30 }
  validates :content, presence: true, length: { maximum: 200 }
  validates :last_day, length: { maximum: 4 }, allow_blank: true, numericality: { only_integer: true }

  enum status: { years: 0, month: 1, day: 2, hours: 3, minute: 4, seconds: 5 }
end
