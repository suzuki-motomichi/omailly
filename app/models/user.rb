class User < ApplicationRecord
  authenticates_with_sorcery!
  has_many :authentications, dependent: :destroy
  has_many :posts, dependent: :destroy

  accepts_nested_attributes_for :authentications

  validates :name, presence: true, length: { maximum: 15 }
  validates :email, uniqueness: true, presence: true, length: { maximum: 255 }
  validates :password, length: { minimum: 6 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

  before_create -> { self.uuid = SecureRandom.uuid }

  enum role: { general: 0, admin: 1 }

  def my_post?(object)
    id == object.user_id
  end
end
