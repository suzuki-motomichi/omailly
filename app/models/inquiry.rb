class Inquiry < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true, length: { maximum: 1000 }

  enum category: { bug: 0, request: 1, others: 2 }
end
